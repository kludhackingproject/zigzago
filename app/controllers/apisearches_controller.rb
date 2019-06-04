class ApisearchesController < ApplicationController
    def index
      amadeus = Amadeus::Client.new

      response = amadeus.shopping.flight_offers.get(
        origin: 'NYC',
        destination: 'MAD',
        departureDate: '2019-10-01'
      )

      @amadeus_test = response.data
    end

    def show
    end

    def new
    end

    def create
    end

    def destroy
    end

end
