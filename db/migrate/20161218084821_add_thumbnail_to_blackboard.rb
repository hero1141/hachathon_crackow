class AddThumbnailToBlackboard < ActiveRecord::Migration[5.0]
  def change
    add_column :blackboards, :thumbnail, :text
  end
end
