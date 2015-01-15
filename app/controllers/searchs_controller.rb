class SearchsController < ApplicationController

def new
	@current_user = User.find(params[:user_id])
	@tour_guide = @current_user.tour_guide
end

end
