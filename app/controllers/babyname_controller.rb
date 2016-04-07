class BabynameController < ApplicationController
  def index
  end

  def namecorrection
  #params dob and fullname
  	@date = params[:your_dob][:day].to_i
    @birth,@fate = luckynum
    case @birth
    when condition
    	
    end


  end

private 
  def luckynum
  	# raise params[:your_dob][:month].to_i.inspect
    @lucky1 = params[:your_dob][:day].to_i
    while @lucky1>9
     tmp=@lucky1.to_s.split('').map { |e| e.to_i  }
      @lucky1=tmp.inject(0, :+)
    end
    arr = []
    arr << params[:your_dob][:day].to_i
    arr << params[:your_dob][:month].to_i
    arr << params[:your_dob][:year].to_i
    @lucky2 = arr.inject(0, :+)

   while @lucky2 >=10
      tmp=@lucky2.to_s.split('').map { |e| e.to_i  }
      @lucky2=tmp.inject(0, :+)
   end
   return @lucky1,@lucky2

  end



end
