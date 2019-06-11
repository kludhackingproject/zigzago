class UserMailer < ApplicationMailer
    default from: 'zigzago@protonmail.com'
 
    def welcome_email(user)

      @user = user 
  
      @url  = 'https://zigzago-development.herokuapp.com/' 
  
      mail(to: @user.email, subject: 'Confirmation de ton inscription chez Zigzago !') 
    end

    def order_confirmation(user)
      
      @user = user

      mail(to: @user.email, subject: 'Votre voyage est reservé !')
    end
end
