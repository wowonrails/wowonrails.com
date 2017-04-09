class ContactMailer < ApplicationMailer
  def notify(name, sender_email, phone, message)
    @name = name
    @sender_email = sender_email
    @phone = phone
    @message = message

    @subject = "[wowonrails.com] new contact message!"

    mail to: "wowaonrails@gmail.com", subject: @subject
  end
end
