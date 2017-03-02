require 'CSV'
$csv_array = CSV.open("data/char_list.csv").read()
$input_array_index = 0
$csv_array_y = 0
$csv_array_x = 0
$encoded = Array.new
enc = gets.chomp.split("")

def letter (character)
  case character
  when $csv_array[$csv_array_y][$csv_array_x]
    $encoded << $csv_array[$csv_array_y][$csv_array_x += 1]
    $input_array_index += 1
    $csv_array_y = 0
    $csv_array_x = 0
  else
    $csv_array_y += 1
  end
end

while $input_array_index < enc.length
  letter enc[$input_array_index]
end
output = $encoded.join(" ")
File.open("data/output.txt", "w") {|f| f.write output}
puts output
