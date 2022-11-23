class Coordinator < ApplicationRecord
  has_many :participants
  has_many :registries , :through => :participant
  validates :email , uniqueness:{ case_sensitive: false,message: "email already taken" }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :name, presence: true
end
