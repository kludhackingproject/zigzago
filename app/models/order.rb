class Order < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :stripe_token, presence: true
end
