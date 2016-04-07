class PanditsController < ApplicationController
	def index
		@pandits = User.where(role: User::TYPE_PANDIT).includes(:pandit)
		# @pandits = Pandit.all.includes(:user)
	end

	def show
	end
end
