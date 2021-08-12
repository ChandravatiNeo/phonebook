class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update]

  def index
    @contacts = Contact.all.order(:first_name)
  end

  def new
  end

  def create
    @contact = Contact.new(contact_params)

    @contact.save
    redirect_to @contact
  end

  def show
  end

  def edit
  end

  def update
    @contact.update contact_params
    redirect_to @contact
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
