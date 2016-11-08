class PanditsController < ApplicationController
# 	def index
# # @pandits = Pandit.all.includes(:user)
#
# 		# @pandits = User.where(role: User::Pandit).includes(:pandit)
#
# 	end
require 'will_paginate/array'
	def show
		@pandit = User.find(params[:id])
	end

    def book_pandit
    	@pandit = Pandit.find(params[:id])
    	offer = @pandit.offers.new(description: params[:description], active_offer: true, status: "Pending")
      if offer.save
        redirect_to pandits_path
        flash[:notice] = "Notification sent to the pandit"
      else
      end
    end

    def accept_or_reject_offer(status, offer_id)
    	@offer = Offer.find(params[:offer_id])

        if status == "accept"

    	@offer.update(active_offer: false, status: "accepted");

        else
         @offer.update(active_offer: false, status: "rejected");
        end


    end


    def show_offers


    end




	def index
		# raise params.inspect
		@pandits = Pandit.all.paginate(:page => params[:page], :per_page => 2)
    @pandits.each do |pandit|
      pandit.user = pandit.user
    end
    # Post.paginate(:page => params[:page])
		#Item.all.includes(:categories)
		#@pandits = User.where(role: User::Pandit).includes(:pandit)

       #@users = User.all.paginate(:page=> params[:page], :per_page=>3)
	   if params[:commit]=="search"
	# raise params.inspect

         #@msg="sdfa"
	  name=params[:deals]
	  city=params[:city]
	  state=params[:state]
	  page= params[:page]
	  per_page=6

	@pandit = Sunspot.search(Pandit) do
	    if name.present?
	      with(:deals, deals)
	    end
	    if city.present?
	      with(:city, city)
	    end
	     if state.present?
	      with(:state, state)
	    end

	    paginate :page => page, :per_page => per_page


	  end.results


	   #paginate :page => page, :per_page => per_page
	  end













	end
end
