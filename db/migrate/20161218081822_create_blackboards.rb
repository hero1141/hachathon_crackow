class CreateBlackboards < ActiveRecord::Migration[5.0]
  def change
    create_table :blackboards do |t|
      t.string :name
      t.json :data

      t.timestamps
    end
  end
end
