class Signup < ApplicationRecord
  belongs_to :activity
  belongs_to :camper
  
  # insures time is between 0 and 23
  validates :time, inclusion: 0..23
end
