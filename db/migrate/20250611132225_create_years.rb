class CreateYears < ActiveRecord::Migration[8.0]
  def change
    create_table :years do |t|
      t.date :name
      t.boolean :current_year

      t.timestamps
    end
  end
end
