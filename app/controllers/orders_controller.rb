class OrdersController < ApplicationController
  
  def index
    @orders = Order.where(user_id: current_user.id)
  end
  
  def new
  end

  def show

    @city_departure = params[:city_departure]
    @destination = params[:destination]
    @departure_date = params[:departure_date]
    @arrival_date = params[:arrival_date]
    @price = params[:price].to_i
    @duration = params[:duration]

    @back_citydeparture = params[:back_citydeparture]
    @back_destination = params[:back_destination]
    @back_departuredate = params[:back_departuredate]
    @back_arrivaldate = params[:back_arrivaldate]
    @back_duration = params[:back_duration]

    @price_in_card = @price * 100

  end

  def create
    @price = params[:price].to_i
    @price_conv = @price * 100

    @order = Order.new(user_id: current_user.id, stripe_token: params[:stripeToken], city_departure: params[:city_departure], destination: params[:destination], 
    departure_date: params[:departure_date], arrival_date: params[:arrival_date], price: params[:price], duration: params[:duration], back_citydeparture: params[:back_citydeparture], 
    back_destination: params[:back_destination], back_departuredate: params[:back_departuredate], back_arrivaldate: params[:back_arrivaldate])

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
