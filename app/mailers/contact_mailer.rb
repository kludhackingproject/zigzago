class ContactMailer < ApplicationMailer
    
    def contact_form(contact)
      @contact = contact
      @to = "zigzago@protonmail.com"
   
      mail(to: @to, subject: "Nouveau contact depuis le site") do |format|
        format.html
      end
    end
end
