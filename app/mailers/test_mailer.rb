class TestMailer < ApplicationMailer
  def welcome(email)
    @email = email
    @subject = "[WOWONRAILS] test mailer!"

    mail to: @email, subject: @subject
  end
end
