class ContactsController < ApplicationController
    def new
        @contact = Contact.new
      end
    
      def create
        @contact = Contact.new(params[:contact])
        
        if @contact.save
          AdminMailer.general_message(@contact).deliver_now
          render "apisearches/index"
        else
          render :new
        end
      end   
end
