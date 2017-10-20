if File.exist?("kuerzelliste.txt")
  # Bevor die Datei geöffnet wird überprüfen, ob es sie überhaupt gibt
  @file = File.read("kuerzelliste.txt").split(" ") # Datei einlesen
  input = gets.chomp().capitalize!.upcase!
  # Input aufnehmen und in Großbuchstaben speichern.
  # der Umweg über "capitalize", da bereits großgeschriebene Wörter sonst einen Error geben.
  @output = Array.new()

  def check_input(input)
    for n in 3.downto(0)
      # Die Maximallänge des vorderen Kennzeichenteils ist 3
      chunk = input.slice(0..n)
      # Chunk wird jedes mal neu definiert
      if @file.include?(chunk)
        @output << input.slice!(0..n)
        if input.length >= 2
          @output << input.slice!(0..1)
        else
          @output << input.slice!(0)
        end
        break # break aus der for-schleife, da abgeschlossen
      end
    end
    @output << "nP" if @output[-1].nil? || input.length == 1
    # fügt "notPossible" in das Array, wenn das letzte Element eines Arrays nil ist (kommt durch pushen eines leeren elements) oder nur 1 lang ist.
    @output << rand(0..9999).to_s
    # ein Kennzeichen hat eine bis zu 4 stellige Zahlenfolge
  end

  while input.length != 0
    # solange noch ein Buchstabe im input ist wird folgendes durchgeführt
    check_input(input)
    break if @output.include?("nP")
    # break aus der while-schleife, Falls Zeichenfolge nicht möglich
  end
  if @output.include?("nP")
    puts "Impossible"
  else
    puts @output.join(" ")
  end

else
  puts "Can't find kuerzelliste.txt, please put it in the same folder as File"
end
#TODO: Add support for special characters
#TODO: Längster String wird gesucht, kann zu Impossible führen obwohl machbar
#Compatability Error with encoding
