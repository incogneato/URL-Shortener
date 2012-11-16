# class UsersController < ApplicationController
# 	def index
# 		@user = User.new
# 		@users = User.all
# 	end

# 	def new
# 		@user = User.new
# 	end

# 	def create
# 		@user = User.create(params[:user])
# 		if @user.save
# 			redirect_to :root, :notice => 'Successfully registered!'
# 		else
# 			render 'new'
# 		end
# 	end
# end