class Shortener < ActiveRecord::Base
  attr_accessible :original_url, :short_url, :visit_count
  # validates_format_of :original_url, :with => /http[s]?:\/\/.*\.(com|net|org|biz|io|ly)/
  validates_uniqueness_of :original_url
	before_create :shorten, :add_http

  belongs_to :user
  default_scope order: 'visit_count DESC'

  def increment_visit_count
    self.update_attributes :visit_count => self.visit_count += 1    
  end

  private
  def add_http
    self.original_url = "http://#{original_url}" unless self.original_url =~ /http[s]?:\/\// 
  end

	def shorten
  	self.short_url = (('a'..'z').to_a + ('1'..'9').to_a + ('A'..'Z').to_a).shuffle[0..5].join
  end
end
