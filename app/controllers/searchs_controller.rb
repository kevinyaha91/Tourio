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
		country = initial_array[2].split(' ')
		final_country = country[0]
		@result = User.where("city = ? AND state = ? AND country = ? AND tour_guide = ?", city, final_state, final_country, true)
		respond_to do |format|	
			format.json { render :json => @result }
	    	format.html { render 'nearby_guides' }
		end
	end
end
