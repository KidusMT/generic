class Crew < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  has_many :clock_times#, class_name: 'ClockTime'
end
