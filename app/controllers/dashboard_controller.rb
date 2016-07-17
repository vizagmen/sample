class DashboardController < ApplicationController
	before_action :authenticate_user!
	# before_action :is_admin?
 	# layout 'admin'
  def index
  	@references_count  = User.where(reference_no: current_user.serial_no).count
    @refered_users = User.where(reference_no: current_user)
  end
end
