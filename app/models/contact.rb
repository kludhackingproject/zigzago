class Contact < ApplicationRecord
    validates :email, 
    :presence => :true,
    :format => { 
      :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
      :description => "must be a valid email address"
    }
    validates :description, :presence => :true
end
