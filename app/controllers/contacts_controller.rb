class ContactsController < ApplicationController
  expose(:contact_form) do
    ContactForm.new(params)
  end

  def create
    ContactMailer.notify(params).deliver! if contact_form.valid?
  end
end
