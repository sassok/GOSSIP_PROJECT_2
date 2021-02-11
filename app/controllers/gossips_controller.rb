class GossipsController < ApplicationController
  def new
  end
  
  def create
    @gossip = Gossip.create(title: params["title"], content: params["content"]) # avec xxx qui sont les données obtenues à partir du formulaire
    @gossip.user = User.find_by(id: session[:user_id])

    if @gossip.save 
      redirect_to home_path
      flash.notice = "Gossip bien enregistré"
    else
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
