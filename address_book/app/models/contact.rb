class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :email_address, format: {with: /\[@]/}
  validates :phone_number, numericality: { only_integer: true }
end
