class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.references :user, foreign_key: true
      t.string :cords
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
