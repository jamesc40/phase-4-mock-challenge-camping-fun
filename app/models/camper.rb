class Camper < ApplicationRecord
  has_many :signups
  has_many :activities, through: :signups

  validates :name, presence: true
  # insures age is between 8 and 18
  validates :age, inclusion: 8..18
end
