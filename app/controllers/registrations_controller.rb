class RegistrationsController < Devise::RegistrationsController
	def new
    super
  end

  def create
    # add custom create logic here
    # raise params.inspect
    user = User.new(params.require(:user).permit(:email, :password,:password_confirmation, :name, :phone, :aadhar_card, :reference_no, :address))
   
    if user.save
    	flash[:notice] = "User created successfully"
    else
    	flash.now[:alert] = "User creation faild"
    	render 'new'
    end

  end

  def update
    super
  end
end
