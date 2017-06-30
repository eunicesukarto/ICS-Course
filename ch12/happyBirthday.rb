print "What year are you born in? "
year = gets.to_i
print "What month are you born in? "
month = gets.to_i
print "What day are you born in? "
day = gets.to_i
puts
age = Time.new.year - year
if Time.local(year+age, month, day)>Time.new
	age = age-1
end
puts "You are #{age} years old."
age.times do
puts "SPANK!"
end