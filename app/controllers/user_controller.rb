class UserController < ApplicationController
    def show
    end
    def new
    end
    def login
        puts params
    end
    def create
        @user = User.new(name: params["name"], email: params["email"], password: params["password"]) # avec xxx qui sont les données obtenues à partir du formulaire
      
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
