class ContactController < ApplicationController

    def index
    end

    def new
        @contact = Contact.new
    end
     
    def create
        @contact = Contact.new(params[:contact])
        
        redirect_to apisearches_index, flash[:success] = "Post successfully created"
    end

end

