class NumerologysController < ApplicationController
	layout 'admin'
	def getfavs
		raise params.inspect
	#params is date of birth
    # @dob = params[:user][:born_on]
    #@date = @dob.split('-').map{|s| s.to_i}[2]
    @date = params[:date][:day].to_i
    #@date[2] #date is calculated 
    
	  case @date

	  when 1,10,19,28
	    @fav_dates = [1,4,10,13,19,22,28,31]
	    @fav_months = ["march", "August", "october"]
	    @fav_weeks = ["sunday", "monday"]
	  
	  when 2,11,20,29
	    @fav_dates = [1,2,4,7,10,11,13,16,19,20,22,25,28,29,30]
	    @fav_months = ["april", "may", "june","july","november"]
	    @fav_weeks = ["sunday", "monday","friday"]
	    
	  when 3,12,21,30
		  @fav_dates = [3,6,9,12,15,18,21,24,27,30]
		  @fav_months = ["february", "june", "september","december"]
		  @fav_weeks = ["thursday", "tuesday"]

		when 4,13,22,31
		  @fav_dates = [1,2,4,7,10,11,16,19,20,25,28,29]
		  @fav_months = ["june", "july"]
		  @fav_weeks = ["sunday", "monday"]

		when 5,14,23
		  @fav_dates = [1,4,5,14,19,22,23,28,31]
		  @fav_months = ["july", "August"]
		  @fav_weeks = ["wednesday", "friday"]

		when 6,15,24
		  @fav_dates = [3,6,9,12,15,18,21,24,27,30]
		  @fav_months = ["may", "october"]
		  @fav_weeks = ["thursday", "tuesday", "friday"]

		when 7,16,25
		  @fav_dates = [2,4,11,13,20,22,25]
		  @fav_months = ["march","april","may","june","september","october","november","december"]
		  @fav_weeks = ["sunday", "monday"]

		when 8,17,26
	   	  @fav_dates = [5,8,14,15,17,19,23,24,26,28,29]
		  @fav_months = ["march","april","may", "june","july","August" ,"september","october","november"]
		  @fav_weeks = ["friday", "saturday", "sunday"]

		when  9,18,27
		  @fav_dates = [1,3,6,9,10,12,15,18,19,21,27,28]
		  @fav_months = ["march", "april", "june", "september"]
		  @fav_weeks = ["thursday", "tuesday", "friday"]

	  end

    # respond_to do|format|
    #   format.js
    # end
	end
    
	# Finds Digital relation ship 
    def digital
			@person1_dob = params[:user][:born_on]
			@person2_dob = params[:friend][:born_on]
			@person1_dob= @person1_dob.split('-').map{|s| s.to_i}
			@person2_dob = @person2_dob.split('-').map{|s| s.to_i}
	    
      case @person1_dob[2]
		    when 1,10,19,28
		     if [9,8,27].include?(@person2_dob[2]) 
		       @relation = "Vibrates"
		     elsif [4,13,22,31].include?(@person2_dob[2])
		     	 @relation= "Attracts"
		     elsif [8,17,26,6,15,24,7,16,25].include?(@person2_dob[2])
		     	 @relation = "DisAgree"
		     elsif [2,11,20,29,3,12,21,30,5,14,23].include?(@person2_dob[2])
		     	 @relation = "Passive"
		     else
		     	 @relation = "Neutral"
		     end

		    when 2,11,20,29 
		      if [8,17,26].include?(@person2_dob[2]) 
		       @relation = "Vibrates"
		     elsif [7,16,25,9,18,27].include?(@person2_dob[2])
   		     @relation= "Attracts"

		     elsif [5,14,23].include?(@person2_dob[2])
		     	 @relation = "DisAgree"
		     elsif [1,10,19,28,3,12,21,30,4,13,22,31,6,15,24].include?(@person2_dob[2])
		     	 @relation = "Passive"
		     else
		     	 @relation = "Neutral"	
		     end

		    when 3,12,21,30

	    	if [7,16,25].include?(@person2_dob[2]) 
		      @relation = "Vibrates"
		    elsif [5,14,23,6,15,24,9,18,27].include?(@person2_dob[2])
		     	@relation= "Attracts"
		    elsif [4,13,22,31,8,17,26].include?(@person2_dob[2])
		     	@relation = "DisAgree"
		    elsif [1,10,19,28,2,11,20,29].include?(@person2_dob[2])
		     	@relation = "Passive"
		    else
		     	@relation = "Neutral"		
		    end

			when 4,13,22,31
		     if [6,15,24].include?(@person2_dob[2]) 
		      @relation = "Vibrates"
		     elsif [1,10,19,28,8,17,26].include?(@person2_dob[2])
		     	@relation= "Attracts"

		     elsif [3,12,21,30,5,14,23].include?(@person2_dob[2])
		     	@relation = "DisAgree"
		     elsif [2,11,20,29,7,16,25,9,18,27].include?(@person2_dob[2])
		     	@relation = "Passive"
		     else
		     	@relation = "Neutral"
		     		
		     end
			
			when 5,14,23

			if [5,14,23].include?(@person2_dob[2]) 
		      @relation = "Vibrates"
		     elsif [3,12,21,30].include?(@person2_dob[2])
		     	@relation= "Attracts"

		     elsif [2,11,20,19,4,13,22,31].include?(@person2_dob[2])
		     	@relation = "DisAgree"
		     elsif [1,10,19,28,6,15,24,7,16,25,8,17,26,9,18,27].include?(@person2_dob[2])
		     	@relation = "Passive"
		     else
		     	@relation = "Neutral"
		     		
		     end
			when 6,15,24

			
		if [4,13,22,31].include?(@person2_dob[2]) 
		      @relation = "Vibrates"
		     elsif [3,12,21,30,9,18,27].include?(@person2_dob[2])
		     	@relation= "Attracts"

		     elsif [1,10,19,28,8,17,26].include?(@person2_dob[2])
		     	@relation = "DisAgree"
		     elsif [2,11,20,29,5,14,23,7,16,25].include?(@person2_dob[2])
		     	@relation = "Passive"
		     else
		     	@relation = "Neutral"
		     		
		     end

			when 7,16,25
		if [3,12,21,30].include?(@person2_dob[2]) 
		      @relation = "Vibrates"
		     elsif [2,11,20,29].include?(@person2_dob[2])
		     	@relation= "Attracts"

		     elsif [1,10,19,28,9,18,27].include?(@person2_dob[2])
		     	@relation = "DisAgree"
		     elsif [4,13,22,31,5,14,23,6,15,24,8,17,26].include?(@person2_dob[2])
		     	@relation = "Passive"
		     else
		     	@relation = "Neutral"
		     		
		     end
			when 8,17,26
		if [2,11,20,29].include?(@person2_dob[2]) 
		      @relation = "Vibrates"
		     elsif [1,10,19,28,4,13,22,31].include?(@person2_dob[2])
		     	@relation= "Attracts"

		     elsif [3,12,21,30,6,15,24].include?(@person2_dob[2])
		     	@relation = "DisAgree"
		     elsif [5,14,23,7,16,25,9,18,27].include?(@person2_dob[2])
		     	@relation = "Passive"
		     else
		     	@relation = "Neutral"
		     		
		     end
			when  9,18,27

		if [1,10,19,28].include?(@person2_dob[2]) 
		      @relation = "Vibrates"
		     elsif [2,11,20,29,3,12,21,30,6,15,24].include?(@person2_dob[2])
		     	@relation= "Attracts"

		     elsif [7,16,25].include?(@person2_dob[2])
		     	@relation = "DisAgree"
		     elsif [4,13,22,31,5,14,23,8,17,26].include?(@person2_dob[2])
		     	@relation = "Passive"
		     else
		     	@relation = "Neutral"
		     		
		     end
	    	respond_to do|format|
	        format.js
	    	end	
    end
  end


# Finds friendship percentage params is date of birth 
  def friendship

    @my_dob = params[:user][:born_on]
    @my_date = @my_dob.split('-').map{|s| s.to_i}[2]
    @friend_dob = params[:friend][:born_on]
    @friend_dob.gsub!(/[^0-9A-Za-z]/, '')
    @friend_dob=@friend_dob.split('').map{|s| s.to_i}
    @lucky2= @friend_dob.inject(0,:+)

  	while  @lucky2 >= 10
    tmp=@lucky2.to_s.split('').map { |e| e.to_i  }
    @lucky2 = tmp.inject(0, :+)
  	end

  case  @my_date
   when 1,10,19,28
      if  [1,3,4,6,8].include?(@lucky2)
        @percentage = "80%"
      else 
        @percentage = "0%"
      end
    when 2,11,20,29
        if [2,3,7,8].include?(@lucky2)
           @percentage = "75%"
        else
           @percentage = "0%"  	
        end     
    when 3,12,21,30

	   if [1,3,6,9].include?(@lucky2)
	   	@percentage = "90%"
	   else
	   	@percentage = "0%"
	   end


	when 4,13,22,31

	if [1,4,6,8].include?(@lucky2)
		@percentage = "75%"
	else
		@percentage = "0%"
	end

	when 5,14,23

	if [3,5,6,8].include?(@lucky2)
		@percentage = "70%"
	else
		@percentage = "0%"
	end

	when 6,15,24

	if [1,5,6,8,9].include?(@lucky2)
		@percentage = "90%"
	else
		@percentage = "0%"
	end


	when 7,16,25

	if [2,3,7,9].include?(@lucky2)
		@percentage = "65%"
	else
		@percentage = "0%"
	end


	when 8,17,26

	if [1,2,3,4,5,7].include?(@lucky2)
		@percentage = "69%"
	else
		@percentage = "0%"
	end

	when  9,18,27

	if [1,3,6,7,9].include?(@lucky2)
		@percentage = "85%"
	else
		@percentage = "0%"
	end


    end
  respond_to do|format|
     format.js
  end
 
  end

end
