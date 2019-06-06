class Contact < ApplicationRecord

attr_accessor :lastname, :email, :subject, :message

after_create :contact_send
 
validates :lastname, :email, :subject, :message, presence: true
validates :email, :format => { :with => %r{.+@.+\..+} }, allow_blank: true

def contact_send
    ContactMailer.contact_form(@contact).deliver_now
end
 
end
