class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if contact.save
      flash[:notice] = "Contact saved"
      redirect_to contact_path(@contact)
    else
      render 'new'
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.destroy(params[:id])
  end

private
  def contact_params
    params.require(:contact).permit(:name, :number)
  end

end
