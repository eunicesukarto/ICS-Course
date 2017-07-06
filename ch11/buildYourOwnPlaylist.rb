def shuffle_wrapper arr
	shuffle [], arr
end

def shuffle shuffled_arr, arr
	if arr == []
		return shuffled_arr
	else
		n=rand(arr.length-1)
		shuffled_arr.push arr[n]
		temp = arr[n]
		arr[n] = arr[arr.length-1]
		arr[arr.length-1] = temp
		arr.pop
		shuffle shuffled_arr, arr
	end
end

Dir.chdir "d:/Stuff/Ruby/ch11"
files = Dir["../*.mp3"]
files = shuffle_wrapper files
filename = "My Playlist.m3u"
File.open filename, 'w' do |f|
	files.each do |name|
		f.write name
		f.write "\n"
	end
end
