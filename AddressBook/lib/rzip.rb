#!/user/bin/env ruby

f = File.open("zip_codes","r")
zip_codes = Array.new
f.each do |line|
	line[0] = " "
	line.gsub!(/\,.+$/, " ")
	zip_codes.push(line)
	end
zip_codes.select! {|string| string.strip!}
puts zip_codes
