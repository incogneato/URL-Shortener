class HomeController < ApplicationController

	def index
		if user_signed_in?
			redirect_to :controller => 'shorteners', :action => 'index'
		else
			redirect_to :controller => 'home', :action => 'index'
		end
	end

end
