module Formating 

	def Formating.valid_color favorite_color
		f = File.open("lib/colors","r")
		colors = Array.new
		f.each do |line|
			colors.push(line)
		end
		colors.select! { |string| string.strip!}
		colors.each { |string| 
				if string.downcase == favorite_color.downcase
					return true
				end}
					return false
	end
	def Formating.valid_zip_code zip_code
		f = File.open("lib/zip_codes","r")
		zip_codes = Array.new
		f.each do |line|
			line[0] = " "
			line.gsub!(/\,.+$/, " ")
			line.strip!
			zip_codes.push(line)
		end
		return zip_codes.include? (zip_code)	
	end
end
			
