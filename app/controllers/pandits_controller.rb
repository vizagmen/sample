class PanditsController < ApplicationController
	def index
		#@pandits = Pandit.all.includes(:user)
		# Item.all.includes(:categories)
		# @pandits = Pandit.all.includes(:user)
	end

	def show
		@pandit = Pandit.find(params[:id])
	end
end
