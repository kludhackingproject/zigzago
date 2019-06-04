class ApisearchesController < ApplicationController
    def index
      # Airport & City Search (autocomplete)
      # Find all the cities and airports starting by the keyword 'LON'

    end

    def show



    end

    def new
    end

    def create

      amadeus = Amadeus::Client.new

      response = amadeus.shopping.flight_offers.get(
        origin: params[:departure],
        destination: params[:arrival],
        departureDate: '2019-10-01'
      )

      @results = response.result

      # amadeus = Amadeus::Client.new
      #
      # response =  amadeus.reference_data.locations.get(
      #   keyword: params[:keyword],
      #   subType: Amadeus::Location::ANY
      # )
      #
      # @results = response.result

      respond_to do |format|
        format.html { redirect_to apisearches_path }
        format.js { }
      end

    end

    def destroy
    end

end
