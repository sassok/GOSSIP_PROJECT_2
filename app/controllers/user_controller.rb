class UserController < ApplicationController
    def show
    end
    def new
    end
    def login
        puts params
        puts "Minouche est le plus beau"
    end
    def create
        cit_maggle = City.where(city: params["city"])
        @user = User.new(first_name: params["first_name"], last_name: params["last_name"], description: params["description"], email: params["email"],  age: params["age"], password_digest: params["password_digest"], city: City.find(params["city"])) # avec xxx qui sont les données obtenues à partir du formulaire
      
        if @user.save # essaie de sauvegarder en base @gossip
          # si ça marche, il redirige vers la page d'index du site
          redirect_to home_path
          flash.notice = "Utilisateur bien enregistré! "
        else
          # sinon, il render la view new (qui est celle sur laquelle on est déjà)
          redirect_to new_user_path
          flash.alert = "Try again, des informations sont manquante pour la création du profil"
        end
      end

end
