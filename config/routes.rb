Rails.application.routes.draw do

#créé les 7 chemins REST pour gossip, sauf le destroy
	resources :gossips, except: [:destroy] 

#afficher un potin  
# DEPUIS QU'ON A MIS RESOURCES, ON N'A PLUS BESOIN DE CETTE COMMANDE INDIVIDUELLE
#  get 'gossips/:id', to: 'gossips#show'

#page d'accueil statique
  get 'home', to: 'static_pages#home'

#rails avait généré automatiquement "get 'home/welcome'", on change l'adresse pour une route dynamique mais on renvoit tjrs à la méthode welcome
  get 'home/:name', to: 'home#welcome'

#après avoir créé le controller team, on écrit ici : get URL to: controllervisé#méthodevisée
	get 'team', to: 'static_pages#team'

	get 'contact', to: 'static_pages#contact'
 
#afficher un user (méthode qu'on retrouvera dans gossips)  
	get '/:user', to: 'gossips#user'


end
