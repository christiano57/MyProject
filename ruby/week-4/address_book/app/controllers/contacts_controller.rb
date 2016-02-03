class ContactsController < ApplicationController
	def index
		render "index"
	end
	def create
		render(:text => "This route is contacts#create.")
	end
end
