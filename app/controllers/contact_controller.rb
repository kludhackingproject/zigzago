class ContactController < ApplicationController

  def new 
      @contact = Contact.new
  end
    
  def create
      @contact = Contact.new(params[:contact])
      if @contact.deliver
        flash.now[:error] = nil
        redirect_to apisearches_path, notice: 'Message sent successfully'
      else
        flash.now[:error] = 'Cannot send message'
        redirect_to contact_path
      end
  end

end