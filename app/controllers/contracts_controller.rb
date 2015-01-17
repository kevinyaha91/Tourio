class ContractsController < ApplicationController

	def new
		user = params[:user]
		@user = User.where(id: user).to_a
	end
end
