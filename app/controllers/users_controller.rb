class UsersController < ApplicationController
	def user
		@user = User.find(params[:id])
	end

	def index		
		@users = User.all
	end
end
