require 'CSV'
csv = CSV.open("dienstplan.csv").read()
array_y = 1
array_x = 0
output = Array.new
output.push("<table>")
while array_y < csv.length
	output.push("<tr>")
	while array_x < 6
		output.push("<td>", csv[array_y][array_x], "</td>")
		array_x += 1
	end
	array_y += 1
	array_x = 0
	output.push("</tr>")
end
output.push("</table>")
File.open("dienstplan.html", "w+") {|f| f.write output.join(" ")}