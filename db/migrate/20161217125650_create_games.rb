class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :time
      t.references :user, foreign_key: true
      t.integer :distance
      t.integer :points

      t.timestamps
    end
  end
end
