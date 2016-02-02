class UsersController < ApplicationController
	before_action :authenticate_user!
  
	def user
		@user = User.find(params[:id])
	end

	def index		
		@users = User.all		
		@users = @users - [User.find_by(is_admin: true)]
	end

	def edit

	end

	def update
		
	end
end
