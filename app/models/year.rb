class Year < ApplicationRecord
  before_create :set_current_year
  before_update :update_current_year
  validates :name, presence: true, uniqueness: true

  def set_current_year
    Year.where(current_year: true).update_all(current_year: false)
    self.current_year = true
  end

  def update_current_year
    if self.current_year == true 
      Year.where(current_year: true).update_all(current_year: false)
    end
  end
end
