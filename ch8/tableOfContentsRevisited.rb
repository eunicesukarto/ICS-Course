left=30
right=20
contents=[['1: Getting Started', 1], ['2: Numbers', 9], ['3: Letters', 13]]
puts 'Table of Contents'.center(left+right)
puts ''
contents.each do |ch|
    puts ('Chapter '+ch[0]).ljust(left) + ('page '+ch[1].to_s).rjust(right)
end