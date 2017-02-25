n = gets.to_i
out = rand(n).to_s 
file = out << ".txt"
puts out
File.open(file, "w+") {|f| f.write out}