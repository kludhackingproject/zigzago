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

      # let's get a list of possible destinations from Paris for a maximum amount of 200 EUR
      client = OAuth2::Client.new(ENV['AMADEUS_CLIENT_ID'], ENV['AMADEUS_CLIENT_SECRET'], site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
      token = client.client_credentials.get_token

      response = token.get("/v1/shopping/flight-destinations?origin=#{params[:departure]}&maxPrice=#{params[:price]}")

      response_body = JSON.parse(response.body)

      @results = response_body['data']


      # amadeus = Amadeus::Client.new
      #
      # response = amadeus.shopping.flight_offers.get(
      #   origin: params[:departure],
      #   destination: params[:arrival],
      #   departureDate: '2019-10-01'
      # )
      #
      # @results = response.result

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
        format.js
      end

    end

    def destroy
    end

end
