class Performer < ApplicationRecord
  validates :firstname, :lastname, :birth, :statut, :rate, presence: true
  enum :statut, {
    active: true,
    inactive: false
  }
end
