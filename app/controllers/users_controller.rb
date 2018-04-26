class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all
	end

	def find
		@user = User.new
	end 

	def show
		@user = User.find(params[:id])
		@clubs = @user.admins
	end
	
	def join
		@user = current_user.id
		@admin = Admin.find(params[:id])

	end

	def remove
	end
end
