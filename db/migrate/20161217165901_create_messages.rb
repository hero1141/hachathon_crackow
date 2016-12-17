class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :receiver_id
      t.integer :sender_id
      t.boolean :is_read?
      t.text :content

      t.timestamps
    end
  end
end
