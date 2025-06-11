class Platform < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :creation, presence: true
end
