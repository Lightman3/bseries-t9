class RemoveOldCategory < ActiveRecord::Migration[5.2]
  def up
    remove_column :tv_shows, :category
  end
  def down
    add_column :tv_shows, :ranking, :string, after: 'image_url'
    add_index :tv_shows, :ranking
  end
end
