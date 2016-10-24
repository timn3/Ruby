current_month = Time.new.month.to_s

file_month = File.read('D:\B_Storage\AutoClean\month.txt')

puts file_month 
puts current_month

if file_month == current_month
	puts "My job here is done"
else
	system('D:\B_Storage\AutoClean\clean.bat')
	write_file_month = File.write('D:\B_Storage\AutoClean\month.txt', current_month)
end