class ApisearchesController < ApplicationController
    def index
    end

# vue correspondante à l'affichage des recherches enregistrées (et non du détail des recherches effectuées)

    def show
    end

    def new
    end

    def create

      departure_find = params[:departure]
      arrival_find = params[:arrival]
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
      
    end

    def destroy
    end

end
