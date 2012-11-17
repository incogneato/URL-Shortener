class Shortener < ActiveRecord::Base
  attr_accessible :original_url, :vanity_slug, :short_url, :visit_count
  validates_format_of :original_url, :with => /\.(com|net|org|biz|io|ly)/
  validates_presence_of :original_url
  validates_uniqueness_of :original_url
	before_create :add_http, :shorten

  belongs_to :user
  default_scope order: 'visit_count DESC'

  def increment_visit_count
    self.update_attributes :visit_count => self.visit_count += 1    
  end

  # private
  def add_http
    self.original_url = "http://#{original_url}" unless self.original_url =~ /http[s]?:\/\//
  end

	def shorten
    if self.vanity_slug.empty?
      self.short_url = self.token
    else
      self.short_url = self.vanity_slug 
    end
  end

  def token
    (('a'..'z').to_a + ('1'..'9').to_a + ('A'..'Z').to_a).shuffle[0..5].join
  end
end
