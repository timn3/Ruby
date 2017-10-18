
if File.exist?("kuerzelliste.txt")
  @file = File.read("kuerzelliste.txt").split(" ")
  input = gets.chomp().capitalize!.upcase!
  @output = Array.new()
  @alphabet = ("A".."Z").to_a

  def check_input(input)
    for n in 3.downto(0)
      chunk = input.slice(0..n)
      if @file.include?(chunk)
        @output << input.slice!(0..n)
        if input.length >= 2
          @output << input.slice!(0..1)
        else
          @output << input.slice!(0)
        end
        print @output
        puts " out"
        break
      end
    end
    @output << "nP" if @output[-1].nil? || input.length.between?(1,2)
    @output << rand(0..9999).to_s
  end

  while input.length != 0
    puts input.length
    check_input(input)
    break if @output.include?("nP")
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
