class RegistrationsController < Devise::RegistrationsController
	def new
    super    
  end

  def create
    # add custom create logic here
    # raise params.inspect
    #raise params.inspect
    # raise params.inspect
    # raise sign_up_params.inspect
    user = User.create(sign_up_params)

    if user
      flash[:notice] = "User created successfully"
      redirect_to new_user_session_path   
      # case params[:role]
      # when User::TYPE_PANDIT
      

      # when User::TYPE_PAID_USER

      # when User::TYPE_FREE_USER

      # else

      # end


    else
    	flash.now[:alert] = "User creation faild"
    	render 'new'
    end


    # super do
    #   resource.tag_list = params[:tags]
    #   resource.save
    # end


  end

  def update
    super
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :name, :aadhar_card, :phone, :reference, :address, :avatar,:gender, :serial_no, :dob, :role, :pandit_attributes => [:astrologers, :numerologist, :door_no, :street, :city, :state, :zip_code]);
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :name, :aadhar_card, :phone, :reference, :address, :avatar,:gender, :serial_no, :dob, :role, :pandit_attributes => [:astrologers, :numerologist, :door_no, :street, :city, :state, :zip_code]);
  end

end
