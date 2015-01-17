class ContractsController < ApplicationController

	def new
		user = params[:user]
		user_id = user.to_i
		@user = User.where(id: user_id).to_a
	end

	def single_person
		user = User.find(params[:user_id])
		user_id = user.id
		render :js => "window.location = #{new_contract_path(:user => 'user_id').to_json}"
	end

	
end
