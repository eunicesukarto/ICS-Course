print "Year of birth: "
year = gets.to_i
print "Month of birth: "
month = gets.to_i
print "Day of birth: "
day = gets.to_i
print "Hour of birth: "
hour = gets.to_i
print "Minute of birth: "
min = gets.to_i
print "Second of birth: "
sec = gets.to_i
puts Time.local(year, month, day, hour, min, sec)+1000000000
