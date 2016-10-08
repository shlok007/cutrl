class Cut < ApplicationRecord
	after_create :generate_code
	validates_format_of :url, with: URI.regexp

	def generate_code
		self.update_attributes(shortened_url: self.id.base62_encode)
	end
end
