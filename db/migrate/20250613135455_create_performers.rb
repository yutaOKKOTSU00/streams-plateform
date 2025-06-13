class CreatePerformers < ActiveRecord::Migration[8.0]
  def change
    create_table :performers do |t|
      t.string :firstname
      t.string :lastname
      t.date :birth
      t.string :nationality
      t.boolean :statut
      t.integer :awards
      t.integer :platforms
      t.integer :rate
      t.text :description

      t.timestamps
    end
  end
end
