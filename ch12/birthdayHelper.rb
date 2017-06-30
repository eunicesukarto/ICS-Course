filename = "names.txt"
text = File.read filename
birth_dates = {}
text.each_line do |word|
	temp = word.chomp.split(', ')
	birth_dates[temp[0]] = [temp[1][0..2], temp[1][4, temp[1].length-4].to_i, temp[2].to_i]
end

print "Enter a name: "
name = gets.chomp
exist = false
birth_dates.each do |the_name, date|
	if (name==the_name)
		exist = true
	end
end
if (exist==true)
	if (Time.new<Time.local(Time.new.year, birth_dates[name][0], birth_dates[name][1]))
		puts "Next birthday: #{birth_dates[name][0]} #{birth_dates[name][1]}, #{Time.new.year}."
		puts "#{name} will be #{Time.new.year-birth_dates[name][2]} years old."
	else
		puts puts "Next birthday: #{birth_dates[name][0]} #{birth_dates[name][1]}, #{Time.new.year+1}."
		puts "#{name} will be #{Time.new.year-(birth_dates[name][2])+1} years old."
	end
else
	puts "I don't know."
end