class AdminMailer < ApplicationMailer
    default from: 'zigzago@protonmail.com'

    def contact_email(admin)
        @contact = contact
        mail(to: @admin.email, subjetct: "Nouveau message client" )
    end
end
