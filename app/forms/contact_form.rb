class ContactForm
  include ActiveModel::Model

  attr_reader :email,
              :phone,
              :name,
              :message

  validates :email, presence: true, email: true

  validates :phone, presence: true

  validates :name,
            presence: true,
            length: { in: 2..100 }

  validates :message,
            presence: true,
            length: { in: 1..1000 }

  def notify!
    ContactMailer.notify(name, email, phone, message).deliver!
  end
end
