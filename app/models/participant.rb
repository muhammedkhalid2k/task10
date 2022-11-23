class Participant < ApplicationRecord
  belongs_to :registry
  belongs_to :coordinator
  validates :registry, uniqueness: {scope: :coordinator}
  validates :coordinator, presence: true
  validates :registry, presence: true
  validates :gender, presence: true
  validates :birthday, presence: true
end
