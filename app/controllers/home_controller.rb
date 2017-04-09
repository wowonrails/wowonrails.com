class HomeController < ApplicationController
  expose(:contact_form) do
    ContactForm.new()
  end

  def index
  end
end
