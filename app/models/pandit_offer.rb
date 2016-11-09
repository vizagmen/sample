class PanditOffer < ActiveRecord::Base
	belongs_to :pandit
	belongs_to :offer
	belongs_to :user
end
