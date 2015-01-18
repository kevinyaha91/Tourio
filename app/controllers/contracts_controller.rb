class ContractsController < ApplicationController

	def single_person
		user = User.find(params[:user_id])
		user_id = user.id
		render :js => "window.location = #{new_contract_path(:user => user_id).to_json}"
	end	


	def create
		@contract = Contract.new(params.require(:contract).permit(:contractor_id, :contractee_id, :confirmation))
		@contract.save
		redirect_to contracts_path
	end


	def index
		 @contracts = Contract.where('contractor_id = ? OR contractee_id = ?', current_user, current_user)
	end


	def request_notification
		@contracts = Contract.where('contractee_id =? AND confirmation = ?', params[:current_user], false)
	end


	def confirmation
		contract = Contract.find(params[:contract_id])
		contract.confirmation = true
		contract.save
	end

end
