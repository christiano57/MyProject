class ConcertsController < ApplicationController
	def new
		@concert = Concert.new
		render 'new'
	end

	def create
		@concert = Concert.new concert_params
		if @concert.save == true
			redirect_to concert_path(@concert)
		else 
			render 'new'
		end
	end

	def show
		@display_concert = Concert.find(params[:id])
		render 'show'
	end

	def index
		
	end
	 private
    def concert_params 
        params.require(:concert).permit(:artist, :city, :date, :price, :venue, :description) 
    end 
end
