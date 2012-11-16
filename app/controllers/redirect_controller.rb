class RedirectController < ApplicationController
	
	def go
		redirect_to @shortener = Shortener.find_by_short_url(params[:short_url])
	end
end