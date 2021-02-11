class GossipsController < ApplicationController
  def new
  end
  
  def create
    @gossip = Gossip.new(title: params["title"], content: params["content"], user_id: 11) # avec xxx qui sont les données obtenues à partir du formulaire
  
    if @gossip.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      redirect_to home_path
      flash.notice = "Gossip bien enregistré"
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      redirect_to new_gossip_path
      flash.alert = "Try again, le Gossip n'est pas complet !!!"
    end
  end
  
  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(title: params["title"], content: params["content"])
      redirect_to @gossip
      flash.notice = "Gossip bien enregistré"
    else
      render :edit
      flash.alert = "Try again, le Gossip n'est pas complet !!!"
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to home_path
    flash.notice = "Gossip bien effacé"
  end
  
end
