class Cut < ApplicationRecord
	after_create :generate_code
	validates_format_of :url, with: /\A#{URI::regexp(['http', 'https'])}\z/

	def generate_code
		self.update_attributes(shortened_url: self.id.base62_encode)
	end
end
