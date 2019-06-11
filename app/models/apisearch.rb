class Apisearch < ApplicationRecord
    belongs_to :user

    validates :city_departure, :city_arrival, :departure_date, :return_date, presence: true
end
