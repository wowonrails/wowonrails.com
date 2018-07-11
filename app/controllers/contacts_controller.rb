class ContactsController < ApplicationController
  expose(:contact_form) do
    ContactForm.new(contact_params)
  end

  def create
    contact_form.notify! if contact_form.valid?
  end

  private

  def contact_params
    params.require(:contact).permit(
      :name,
      :email,
      :phone,
      :message
    )
  end
end
