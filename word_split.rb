word = gets.split(//)
length = word.length
acutal_length = length -1
$num = 1
$letter = 0

def addnum
	$num += 1
	$letter += 1
end

while $num < length 
	print "#{$num}. "
	puts word[$letter]
	addnum
end