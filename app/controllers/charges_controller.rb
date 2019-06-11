class ChargesController < ApplicationController
  def new
  end

  def show
    @price = params[:price].to_i
    @price_in_card = @price * 100

  end

  def create
    @price = params[:price].to_i
    @price_conv = @price * 100

    ApiStripe.new(@price_conv, params[:stripeEmail], params[:stripeToken])
  end
end
