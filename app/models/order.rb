class Order < ApplicationRecord
  after_create :order_send
  
  belongs_to :user

  validates :user_id, presence: true
  validates :stripe_token, presence: true

  def order_send
    UserMailer.order_confirmation(self.user).deliver_now
  end

end
