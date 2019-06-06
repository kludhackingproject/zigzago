class ApiResults

    def initialize

        client = OAuth2::Client.new(ENV['AMADEUS_CLIENT_ID'], ENV['AMADEUS_CLIENT_SECRET'], site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
        token = client.client_credentials.get_token
        
        response = token.get("/v1/shopping/flight-offers?origin=#{params[:departure]}&destination=#{params[:arrival]}&departureDate=#{params[:departure_date]}&returnDate=#{params[:return_date]}")
        
        response_body = JSON.parse(response.body)
        response_body['data']
        
        @results = [
                    {
                        "type": "flight-offer",
                        "id": "1559811644669-87466320",
                        "offerItems": [
                            {
                                "services": [
                                    {
                                        "segments": [
                                            {
                                                "flightSegment": {
                                                    "departure": {
                                                        "iataCode": "MAD",
                                                        "terminal": "2",
                                                        "at": "2019-08-01T19:30:00+02:00"
                                                    },
                                                    "arrival": {
                                                        "iataCode": "ORY",
                                                        "terminal": "2",
                                                        "at": "2019-08-01T21:30:00+02:00"
                                                    },
                                                    "carrierCode": "UX",
                                                    "number": "1021",
                                                    "aircraft": {
                                                        "code": "73H"
                                                    },
                                                    "operating": {
                                                        "carrierCode": "UX",
                                                        "number": "1021"
                                                    },
                                                    "duration": "0DT2H0M"
                                                },
                                                "pricingDetailPerAdult": {
                                                    "travelClass": "ECONOMY",
                                                    "fareClass": "N",
                                                    "availability": 9,
                                                    "fareBasis": "NYYR5L"
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "segments": [
                                            {
                                                "flightSegment": {
                                                    "departure": {
                                                        "iataCode": "ORY",
                                                        "terminal": "2",
                                                        "at": "2019-08-28T20:10:00+02:00"
                                                    },
                                                    "arrival": {
                                                        "iataCode": "MAD",
                                                        "terminal": "2",
                                                        "at": "2019-08-28T22:10:00+02:00"
                                                    },
                                                    "carrierCode": "UX",
                                                    "number": "1026",
                                                    "aircraft": {
                                                        "code": "73H"
                                                    },
                                                    "operating": {
                                                        "carrierCode": "UX",
                                                        "number": "1026"
                                                    },
                                                    "duration": "0DT2H0M"
                                                },
                                                "pricingDetailPerAdult": {
                                                    "travelClass": "ECONOMY",
                                                    "fareClass": "Z",
                                                    "availability": 1,
                                                    "fareBasis": "ZYYR0L"
                                                }
                                            }
                                        ]
                                    }
                                ],
                                "price": {
                                    "total": "96.70",
                                    "totalTaxes": "47.70"
                                },
                                "pricePerAdult": {
                                    "total": "96.70",
                                    "totalTaxes": "47.70"
                                }
                            }
                        ]
                    },
                    {
                        "type": "flight-offer",
                        "id": "1559811644669-113042766",
                        "offerItems": [
                            {
                                "services": [
                                    {
                                        "segments": [
                                            {
                                                "flightSegment": {
                                                    "departure": {
                                                        "iataCode": "MAD",
                                                        "terminal": "2",
                                                        "at": "2019-08-01T19:30:00+02:00"
                                                    },
                                                    "arrival": {
                                                        "iataCode": "ORY",
                                                        "terminal": "2",
                                                        "at": "2019-08-01T21:30:00+02:00"
                                                    },
                                                    "carrierCode": "UX",
                                                    "number": "1021",
                                                    "aircraft": {
                                                        "code": "73H"
                                                    },
                                                    "operating": {
                                                        "carrierCode": "UX",
                                                        "number": "1021"
                                                    },
                                                    "duration": "0DT2H0M"
                                                },
                                                "pricingDetailPerAdult": {
                                                    "travelClass": "ECONOMY",
                                                    "fareClass": "N",
                                                    "availability": 9,
                                                    "fareBasis": "NYYR5L"
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "segments": [
                                            {
                                                "flightSegment": {
                                                    "departure": {
                                                        "iataCode": "ORY",
                                                        "terminal": "2",
                                                        "at": "2019-08-28T10:10:00+02:00"
                                                    },
                                                    "arrival": {
                                                        "iataCode": "MAD",
                                                        "terminal": "2",
                                                        "at": "2019-08-28T12:10:00+02:00"
                                                    },
                                                    "carrierCode": "UX",
                                                    "number": "1028",
                                                    "aircraft": {
                                                        "code": "73H"
                                                    },
                                                    "operating": {
                                                        "carrierCode": "UX",
                                                        "number": "1028"
                                                    },
                                                    "duration": "0DT2H0M"
                                                },
                                                "pricingDetailPerAdult": {
                                                    "travelClass": "ECONOMY",
                                                    "fareClass": "Z",
                                                    "availability": 5,
                                                    "fareBasis": "ZYYR0L"
                                                }
                                            }
                                        ]
                                    }
                                ],
                                "price": {
                                    "total": "96.70",
                                    "totalTaxes": "47.70"
                                },
                                "pricePerAdult": {
                                    "total": "96.70",
                                    "totalTaxes": "47.70"
                                }
                            }
                        ]
                    },
                    {
                        "type": "flight-offer",
                        "id": "1559811644669-2607730",
                        "offerItems": [
                            {
                                "services": [
                                    {
                                        "segments": [
                                            {
                                                "flightSegment": {
                                                    "departure": {
                                                        "iataCode": "MAD",
                                                        "terminal": "2",
                                                        "at": "2019-08-01T19:30:00+02:00"
                                                    },
                                                    "arrival": {
                                                        "iataCode": "ORY",
                                                        "terminal": "2",
                                                        "at": "2019-08-01T21:30:00+02:00"
                                                    },
                                                    "carrierCode": "UX",
                                                    "number": "1021",
                                                    "aircraft": {
                                                        "code": "73H"
                                                    },
                                                    "operating": {
                                                        "carrierCode": "UX",
                                                        "number": "1021"
                                                    },
                                                    "duration": "0DT2H0M"
                                                },
                                                "pricingDetailPerAdult": {
                                                    "travelClass": "ECONOMY",
                                                    "fareClass": "N",
                                                    "availability": 9,
                                                    "fareBasis": "NYYR5L"
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "segments": [
                                            {
                                                "flightSegment": {
                                                    "departure": {
                                                        "iataCode": "ORY",
                                                        "terminal": "2",
                                                        "at": "2019-08-28T17:00:00+02:00"
                                                    },
                                                    "arrival": {
                                                        "iataCode": "MAD",
                                                        "terminal": "2",
                                                        "at": "2019-08-28T19:00:00+02:00"
                                                    },
                                                    "carrierCode": "UX",
                                                    "number": "1222",
                                                    "aircraft": {
                                                        "code": "73H"
                                                    },
                                                    "operating": {
                                                        "carrierCode": "UX",
                                                        "number": "1222"
                                                    },
                                                    "duration": "0DT2H0M"
                                                },
                                                "pricingDetailPerAdult": {
                                                    "travelClass": "ECONOMY",
                                                    "fareClass": "Z",
                                                    "availability": 2,
                                                    "fareBasis": "ZYYR0L"
                                                }
                                            }
                                        ]
                                    }
                                ],
                                "price": {
                                    "total": "96.70",
                                    "totalTaxes": "47.70"
                                },
                                "pricePerAdult": {
                                    "total": "96.70",
                                    "totalTaxes": "47.70"
                                }
                            }
                        ]
                    }
                ],
                "dictionaries": {
                    "carriers": {
                        "UX": "AIR EUROPA"
                    },
                    "currencies": {
                        "EUR": "EURO"
                    },
                    "aircraft": {
                        "73H": "BOEING 737-800 (WINGLETS)"
                    },
                    "locations": {
                        "MAD": {
                            "subType": "AIRPORT",
                            "detailedName": "ADOLFO SUAREZ BARAJAS"
                        },
                        "ORY": {
                            "subType": "AIRPORT",
                            "detailedName": "ORLY"
                        }
                    }
                },
                "meta": {
                    "links": {
                        "self": "https://test.api.amadeus.com/v1/shopping/flight-offers?origin=MAD&destination=PAR&departureDate=2019-08-01&returnDate=2019-08-28&adults=1&nonStop=false&maxPrice=100"
                    },
                    "currency": "EUR",
                    "defaults": {
                        "nonStop": false,
                        "adults": 1
                    }
                }

    end

    
    def departure

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                   @departure = service['segments']['flightSegment']['departure']['iataCode']
                end
            end
        end

        return @departure

    end

    def departure_date

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                   @departure_date = service['segments']['flightSegment']['departure']['at']
                end
            end
        end

        return @departure_date

    end


    def destination

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                    service['segments'].each do |segment| 
                        if segment['flightSegment'].count > 1
                            @destination = segment['flightSegment'].last['arrival']['iataCode']
                        else
                            @destination = segment['flightSegment']['arrival']['iataCode']
                        end
                    end
                end
            end
        end

    end

    def return_date

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                   @return_date = service['segments'].last['flightSegment']['departure']['at']
                end
            end
        end

        return @return_date


    end

    def price

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                @price = offerItem['price']['total']
            end
        end

        return @price

    end

    def stopover
        
        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                   @stopover = service['segments'].count('flightSegment')
                end
            end
        end

        return @stopover

    end

    def departure_duration

        @departure_duration = 0

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                    service['segments'].each do |segment|
                        segment['flightSegment'].each do |flightSegment|
                            if flightSegment > 1
                                @departure_duration += flightSegment.duration
                            else
                                @departure_duration = flightSegment.duration
                            end
                        end
                    end
                end
            end
        end

        return @departure_duration

    end

    def return_duration

        @return_duration = 0

        @results.each do |result|
            result['offerItems'].each do |offerItem|
                offerItem['services'].each do |service|
                    service['segments'].each do |segment|
                        segment['flightSegment'].each do |flightSegment|
                            if flightSegment > 1
                                @return_duration += flightSegment.duration
                            else
                                @return_duration = flightSegment.duration
                            end
                        end
                    end
                end
            end
        end

        return @return_duration

    end 


end
