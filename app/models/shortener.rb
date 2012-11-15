class Shortener < ActiveRecord::Base
  attr_accessible :url

  def shorten
  	# replace url with token: (('a'..'z').to_a + ('1'..'9').to_a + ('A'..'Z').to_a).shuffle[0..7].join
  end

  def complete
  	# use regex to add 'http://' if not there.
  end

end
