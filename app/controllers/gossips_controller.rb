class GossipsController < ApplicationController


#ça ne devrait pas être là, mais en attendant, la fiche user est là :	
	def user
	#on selectionne le user qui correspond au nom envoyé en cliquant sur le lien dans gossip
		@user = User.find_by(first_name: params["user"])
  end


#telles que doivent être toutes les def de la classe gossip, en mode REST
	def index
		# Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
	#on récupère les infos du formulaire de la méthode create
	  Gossip.create(params[:title, :content])
	end



	def show
		# Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
	#on selectionne le gossip qui correspond à l'id rentré dans l'adresse (params{"id"})
		@gossip = Gossip.find(params["id"])
	end



	def new
	  # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
	end



	def create
	  # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
	  # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
	  # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
	
  #ici on réceptionne les data du formulaire, envoyées par la méthode new (cf dans views)
  @gossip = Gossip.new(user_id: "13", title:params[:title], content:params[:content]) # avec xxx qui sont les données obtenues à partir du formulaire

  if @gossip.save # essaie de sauvegarder en base @gossip
    # si ça marche, il redirige vers la page d'index du site
    redirect_to "http://localhost:3000/home"

  else
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
  	render 'new'
  end
	end


	def edit
	  # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
	end



	def update
	  # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
	  # pour info, le contenu de ce formulaire sera accessible dans le hash params
	  # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
	end



end
