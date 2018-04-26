class AdminsController < ApplicationController
	before_action :authenticate_admin!
	
	def show
		@admin = current_admin
	end

	def update1
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance + 0.01)
		@admin.save
		redirect_to admins_url
	end

	def update2
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance + 0.10)
		@admin.save
		redirect_to admins_url
	end

	def update3
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance + 1.00)
		@admin.save
		redirect_to admins_url
	end

	def update4
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance + 10.00)
		@admin.save
		redirect_to admins_url
	end

	def update5
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance + 100.00)
		@admin.save
		redirect_to admins_url
	end

	def update6
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance + 1000.00)
		@admin.save
		redirect_to admins_url
	end
	def update7
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance - 0.01)
		@admin.save
		redirect_to admins_url
	end

	def update8
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance - 0.10)
		@admin.save
		redirect_to admins_url
	end

	def update9
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance - 1.00)
		@admin.save
		redirect_to admins_url
	end

	def update10
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance - 10.00)
		@admin.save
		redirect_to admins_url
	end

	def update11
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance - 100.00)
		@admin.save
		redirect_to admins_url
	end

	def update12
		@admin = current_admin
		@admin.update_attribute(:balance, @admin.balance - 1000.00)
		@admin.save
		redirect_to admins_url
	end

end
