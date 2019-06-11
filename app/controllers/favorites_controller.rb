class FavoritesController < ApplicationController
  def index
  end 

  def show
  end 

  def new
  end

  # récupérer infos de la carte apisearches
  def create
    @favorite = Favorite.new(city_departure: params[:city_departure],
                             destination: params[:destination],
                             price: params[:price],
                             departure_date: params[:departure_date],
                             return_date: params[:return_date],
                             user_id: params[:user_id]                             )
    respond_to do |format|
      format.html { redirect_to apisearches_path }
      format.js { redirect_to apisearches_path }
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    flash[:success] = "Offre supprimée des favoris !"
    redirect_to favorites_path
  end
    
  def destroy_date
    @datetime = DateTime.now
    @datetime_departure = @departure_date
    if @datetime_departure > @datetime
      @favorite.destroy
    end
  end

end
end
