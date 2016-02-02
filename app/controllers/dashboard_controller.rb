class DashboardController < ApplicationController
	before_action :authenticate_user!
	# before_action :is_admin?
 	# layout 'admin'
  def index
  	
  end
end
