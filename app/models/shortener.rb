class Shortener < ActiveRecord::Base
  attr_accessible :original_url, :short_url
  validates_format_of :original_url, :with => /http[s]?:\/\/.*\.(com|net|org|biz|io|ly)/
  validates_uniqueness_of :original_url
	
	def shorten
  	self.short_url = 'localhost:3000/' << (('a'..'z').to_a + ('1'..'9').to_a + ('A'..'Z').to_a).shuffle[0..5].join
  end
end
