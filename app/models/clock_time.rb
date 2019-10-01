class ClockTime < ApplicationRecord
  validates :check_in_time, presence: true, uniqueness: true

  belongs_to :crew
end
