class SearchsController < ApplicationController

def new
	@current_user = User.find(params[:user_id])
	@tour_guide = @current_user.tour_guide

end

def nearby_guides
	@address = params[:address]
	initial_array = @address.split(',')
	@city = initial_array[0]
	state = initial_array[1].split(' ')
	@final_state = state[0]
	@country = initial_array[2]
end



end
