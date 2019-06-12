class Order < ApplicationRecord
  after_create :order_send
  
  belongs_to :user

  validates :user_id, :city_departure, :destination, :price, :departure_date, :arrival_date, :duration, :back_citydeparture, :back_destination, :back_departuredate, presence: true
  validates :stripe_token, presence: true

  def order_send
    UserMailer.order_confirmation(self.user).deliver_now
  end

end
