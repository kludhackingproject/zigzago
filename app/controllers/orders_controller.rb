class OrdersController < ApplicationController
  def new
  end

  def show
    @price = params[:price].to_i
    @price_in_card = @price * 100

  end

  def create
    @price = params[:price].to_i
    @price_conv = @price * 100

    @order = Order.new(user_id: current_user.id, stripe_token: params[:stripeToken])

    ApiStripe.new(@price_conv, params[:stripeEmail], params[:stripeToken])

    if @order.save # essaie de sauvegarder en base @order
      # si ça marche, il redirige vers la page d'index du site
      redirect_to root_path
      flash[:success] = "Commande validée !"
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render :show
      flash[:danger] = "Commande refusée !"
    end
  end
end
