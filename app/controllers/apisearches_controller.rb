class ApisearchesController < ApplicationController
    def index
    end

    def show
    end

    def new
    end

    def create

      respond_to do |format|
        format.html { redirect_to apisearches_path }
        format.js
      end

      @departure = ApiResults.new.departure
      @departure_date = ApiResults.new.departure_date
      @destination = ApiResults.new.destination
      @return_date = ApiResults.new.return_date
      @price = ApiResults.new.price
      @stopover = ApiResults.new.stopover
      @departure_duration = ApiResults.new.departure_duration
      @return_duration = ApiResults.new.return_duration
    

    end

    def destroy
    end

end
