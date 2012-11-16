# class SessionsController < ApplicationController
#   def new
#   end

#   def create
#   	user = User.authenticate(params[:email], params[:password])
#   	if user
#   		session[:user_id] = user.user_id
#   		redirect_to :root, :notice => 'Welcome!'
#   	else
#   		flash[:alert] = 'Invalid email or password!'
#   		render 'new'
#   	end
#   end

#   def destroy
#   	session[:user_id]= nil
#   	redirect_to :root, :notice => 'Logged out!'
#   end
# end
