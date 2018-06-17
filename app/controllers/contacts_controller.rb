class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Se ha enviado el mensaje satisfactoriamente!"
    else
      flash[:error] = "Hubo un error! intente más tarde."
    end
    @contact = Contact.new
    respond_to do |format|
      format.js {render :show}
    end
  end

  private
    def contact_params
      params.permit(:name, :phone, :message, :email)
    end
end
