class ApisearchesController < ApplicationController
    def index
    end

# vue correspondante à l'affichage des recherches enregistrées (et non du détail des recherches effectuées)

    def show
    end

    def new
    end

    def create

      client = OAuth2::Client.new(ENV['AMADEUS_CLIENT_ID'], ENV['AMADEUS_CLIENT_SECRET'], site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
      token = client.client_credentials.get_token

      response = token.get("/v1/shopping/flight-offers?origin=#{params[:departure]}&destination=#{params[:arrival]}&departureDate=#{params[:departure_date]}&returnDate=#{params[:return_date]}")

      response_body = JSON.parse(response.body)

      @results = response_body['data']

      respond_to do |format|
        format.html { redirect_to apisearches_path }
        format.js
      end

    end

    def destroy
    end

end
