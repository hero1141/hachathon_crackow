class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string, null: false, limit: 32
    add_column :users, :last_name, :string, null: false, limit: 32
  end
end
