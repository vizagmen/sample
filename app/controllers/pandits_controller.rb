class PanditsController < ApplicationController
	def index
		@pandits = User.where(role: User::Pandit).includes(:pandit)
		# Item.all.includes(:categories)
	end

	def show
		@pandit = Pandit.find(params[:id])
	end
end
