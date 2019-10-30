class UsersController < ApplicationController


	def index

	end



	def show
		
	#on selectionne le user qui correspond au nom envoyé en cliquant sur le lien dans gossip
		@user = User.find(params["id"])
	end



	def new
		@user = User.new	
	end



	def create


	end


	def edit
	 
	end



	def update
	  
	end



end
