class SearchsController < ApplicationController

def new
	@current_user = User.find(params[:user_id])
	@tour_guide = @current_user.tour_guide

end

def nearby_guides
	@address = params[:address]
	initial_array = @address.split(',')
	city = initial_array[0]
	state = initial_array[1].split(' ')
	final_state = state[0]
	country = initial_array[2]
	@result = User.where("city = ?", city)
	respond_to do |format|
		format.html {render :partial => 'searchs/result.html.erb', object: @result}
	end
end



end
