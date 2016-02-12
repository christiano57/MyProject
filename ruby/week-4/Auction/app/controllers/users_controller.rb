class UsersController < ApplicationController
	def show
		@user = User.find_by(id: params[:id])
		@products = Product.where(user_id: params[:id])
		render 'show'
	end

	def create
		
	end

	def destroy
		
	end
end
