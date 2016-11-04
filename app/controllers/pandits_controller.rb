class PanditsController < ApplicationController
	def index
# @pandits = Pandit.all.includes(:user)

		@pandits = User.where(role: User::Pandit).includes(:pandit)

	end

	def show
		@pandit = Pandit.find(params[:id])
	end

	def getpandits
raise params.inspect
		#@pandits = Pandit.all.includes(:user)
		#Item.all.includes(:categories)
		@pandits = User.where(role: User::Pandit).includes(:pandit).map(&:pandits)

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
