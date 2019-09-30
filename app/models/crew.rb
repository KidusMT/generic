class Crew < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  has_many :times, class_name: 'ClockTime'
end
