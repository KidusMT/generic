class Country < ApplicationRecord
  validates :code, :name, presence: true, uniqueness: true
end
