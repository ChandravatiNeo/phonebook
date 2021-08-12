class PhonebookController < ApplicationController
  def index
    @contacts = Contact.all.order(:first_name)
  end
end
