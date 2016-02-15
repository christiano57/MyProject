class SandwichIngredientsController < ApplicationController
	def index
		sandwich_ingredient = SandwichIngredient.all
		render json: sandwich_ingredient
	end

	def show
		sandwich_ingredient = SandwichIngredient.find_by(id: params[:id])
		render json: sandwich_ingredient
	end

private 
	def sandwich_ingredient_params
		params.require(:sandwich_ingredient)
			.permit(:name, :calories)
	end
end
