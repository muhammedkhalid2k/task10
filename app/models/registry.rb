class Registry < ApplicationRecord
  has_many :participants
  has_many :coordinators , :through => :participant
  validates :name , uniqueness:{ case_sensitive: false,message: "name already taken" }
  validates :location , uniqueness:{ case_sensitive: false,message: "location already taken" }
  validates :name, presence: true
  validates :location, presence: true
end
