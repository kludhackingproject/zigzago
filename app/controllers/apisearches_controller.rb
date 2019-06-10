class ApisearchesController < ApplicationController
    def index
    end

# vue correspondante à l'affichage des recherches enregistrées (et non du détail des recherches effectuées)

    def show
    end

    def new
    end

    def create

      departure_find = params[:departure].split(", ").last
      arrival_find = params[:arrival].split(", ").last
      departure_date_find = params[:departure_date]
      return_date_find = params[:return_date]

      @api_results = ApiResults.new(departure_find, arrival_find, departure_date_find, return_date_find)


      @departure_result = @api_results.departure
      @departuredate_result = @api_results.departure_date

      @destination_result = @api_results.destination
      @arrivaldate_result = @api_results.arrival_date

      @price_result = @api_results.price
      @departureduration_result = @api_results.departure_duration


      respond_to do |format|
        format.html { redirect_to apisearches_path }
        format.js
      end

      @apisearch = Apisearch.new(city_departure: departure_find, city_arrival: arrival_find, departure_date: departure_date_find, return_date: return_date_find, user_id: current_user.id)

      if params[:save_search] == '1'
        @apisearch.save
      end
    end

    def destroy
    end

end
