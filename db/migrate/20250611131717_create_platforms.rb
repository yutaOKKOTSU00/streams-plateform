class CreatePlatforms < ActiveRecord::Migration[8.0]
  def change
    create_table :platforms do |t|
      t.string :name
      t.date :creation
      t.integer :rate
      t.integer :dail_requests
      t.text :description

      t.timestamps
    end
  end
end
