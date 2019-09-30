class ClockTime < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :crew
end
