class UsersController < ApplicationController

	  def new
    end

    def create
    	user = User.new(user_params)
    	if user.save
      		session[:user_id] = user.id
      		redirect_to '/'
    	else
      		redirect_to '/signup'
    	end
    end  

    def activate_tour_guide
      user = 
    end 

    private

  	def user_params
    	params.require(:user).permit(:firstname, :email, :lastname, :bio, :city, :state, :country, :password, :password_confirmation, :tour_guide)
  	end


	
end
