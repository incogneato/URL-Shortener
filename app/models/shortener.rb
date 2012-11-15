class Shortener < ActiveRecord::Base
  attr_accessible :original_url, :short_url

	def shorten
  	self.short_url = (('a'..'z').to_a + ('1'..'9').to_a + ('A'..'Z').to_a).shuffle[0..7].join
  end
end
