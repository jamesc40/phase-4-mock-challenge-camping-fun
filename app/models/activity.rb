class Activity < ApplicationRecord
  # dependent destory removes the associated signup when it's activity is destroyed
  has_many :signups, dependent: :destroy
  has_many :campers, through: :signups
end
