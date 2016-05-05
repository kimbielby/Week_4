class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone],
      :email_address => params[:contact][:email])
    if @contact.save
      redirect_to("/contacts/index")
    else
      render "new"
    end
  end
end


#
