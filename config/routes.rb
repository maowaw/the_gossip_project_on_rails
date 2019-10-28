Rails.application.routes.draw do


#afficher un potin  
  get 'gossips/:id', to: 'gossips#display'

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
