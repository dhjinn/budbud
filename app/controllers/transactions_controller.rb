class TransactionsController < ApplicationController
	def index
	end

	def find
		@transaction = Transaction.new
	end

	def create
		@transaction = Transaction.new(transaction_params)
		@transaction.update_attribute(:reimbursed, false)
		@transaction.update_attribute(:user_id, current_user.id)
		@transaction.save
		redirect_to users_url

	end

	def new
		@transaction = Transaction.new
	end


	def delete
		@transaction = Transaction.find(params[:id])
		if @transaction.reimbursed == false
			@transaction.destroy
		else
			@transaction.save
		end
		redirect_to users_url
	end 

	def reimburse
		@transaction = Transaction.find(params[:id])
		@transaction.update_attribute(:reimbursed, true)
		current_admin.update_attribute(:balance, current_admin.balance - @transaction.value)
		@transaction.save
		redirect_to admins_url
	end 
	
	def transaction_params
		params.require(:transaction).permit(:date, :value, :club_name, :notes)
	end
end
