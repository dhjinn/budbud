class TransactionsController < ApplicationController
	def index
	end

	def find
		@transaction = Transaction.new
	end

	def create
		@transaction = Transaction.new(transaction_params)
		@transaction.update(reimbursed: false, user_id: current_user.id)
		@transaction.save
		redirect_to users_url
	end

	def new
		@transaction = Transaction.new
	end


	def delete

	end 

	def reimburse
		@transaction = Transaction.find(params[:id])
		@transaction.update(reimbursed: true)
		@transaction.save
		redirect_to admins_url
	end 
	
	def transaction_params
		params.require(:transaction).permit(:admin, :date, :value, :notes)
	end
end
