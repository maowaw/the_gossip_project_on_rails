class GossipsController < ApplicationController


  def display

	#on selectionne le gossip qui correspond à l'id rentré dans l'adresse (params{"id"})
		@gossip = Gossip.find(params["id"])

	end	


	def user
	#on selectionne le user qui correspond au nom envoyé en cliquant sur le lien dans gossip
		@user = User.find_by(first_name: params["user"])

  end

end
