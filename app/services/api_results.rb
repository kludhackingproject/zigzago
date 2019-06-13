class ApiResults

    attr_accessor :results, :departure_array, :destination_array, :departuredate_array, :arrivaldate_array, :price_array, :departureduration_array

    def initialize(departure, arrival, departure_date, return_date)
        
        client = OAuth2::Client.new(ENV['AMADEUS_CLIENT_ID'], ENV['AMADEUS_CLIENT_SECRET'], site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
        token = client.client_credentials.get_token
        response = token.get("/v1/shopping/flight-offers?origin=#{departure}&destination=#{arrival}&departureDate=#{departure_date}&returnDate=#{return_date}&nonStop=true")
        response_body = JSON.parse(response.body)
        
        @results = response_body['data']


        @departure_array = []
        @destination_array = []
        @departuredate_array = []
        @arrivaldate_array = []
        @price_array = []
        @departureduration_array = []

    end

    def departure

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                    service['segments'].each do |segment| 
                        @departure_array << segment['flightSegment']['departure']['iataCode']
                    end
                end
            end
        end

        return @departure_array

    end
    
    def destination

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                    service['segments'].each do |segment| 
                        @destination_array << segment['flightSegment']['arrival']['iataCode']
                    end
                end
            end
        end

        return @destination_array

    end

    def departure_date

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                    service['segments'].each do |segment|
                        @departuredate_array << segment['flightSegment']['departure']['at'].slice(11...16)
                    end
                end
            end
        end

        return @departuredate_array

    end

    def arrival_date

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                    service['segments'].each do |segment|
                        @arrivaldate_array << segment['flightSegment']['arrival']['at'].slice(11...16)
                    end
                end
            end
        end

        return @arrivaldate_array

    end
    
    def price

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                @price_array << offerItem['price']['total']
            end
        end

        return @price_array

    end

    def departure_duration

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                    service['segments'].each do |segment|
                        @departureduration_array << segment['flightSegment']['duration'].slice(3...7)
                    end
                end
            end
        end

        return @departureduration_array

    end

end