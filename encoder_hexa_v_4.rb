require 'csv'
csv_array = CSV.open("data/char_list.csv").read()

letters_to_encode = gets.chomp.split("")

def encode(letter, csv_array)
  letter_and_encodings_array = csv_array.select { |l_a_e| letter == l_a_e[0] }
  letter_and_encoding = letter_and_encodings_array.first
  encoding = letter_and_encoding[1]

  encoding
end

encoded_letters = Array.new

letters_to_encode.each do |letter|
  encoded_letters << encode(letter, csv_array)
end

output = encoded_letters.join(" ")
File.open("data/output.txt", "w") {|f| f.write output}
puts output
