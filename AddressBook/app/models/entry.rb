class Entry < ActiveRecord::Base

require 'formating'

validates_presence_of :first_name
validates_presence_of :last_name
validates_presence_of :email
validates_presence_of :zip_code
validates_presence_of :favorite_color

validates_numericality_of :zip_code
validates :email, format: { with: /[A-Za-z0-9._]+@[A-Za-z0-9._]+\.[A-Za-z]+/}
validate :check_colors
validate :check_zip_codes

	def check_colors
		if !(Formating.valid_color(self.favorite_color))
			errors.add :favorite_color, "is not a valid color. The list of valid colors is at http://www.w3schools.com/html/html_colornames.asp"
		end
	end

	def check_zip_codes
		if !(Formating.valid_zip_code(self.zip_code))
			errors.add :zip_code, "is not a valid zip code."
		end	
	end
end
