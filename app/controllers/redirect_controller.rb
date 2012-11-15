class RedirectController < ApplicationController
	
	def go
		@shortener = Shortener.find_by_short_url(params[:short_url])
		target = @shortener.original_url[0..3] == "http" ? @shortener.original_url : "http://" + @shortener.original_url		
		redirect_to target
	end
end