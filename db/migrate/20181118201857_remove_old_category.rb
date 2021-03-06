class RemoveOldCategory < ActiveRecord::Migration[5.2]
  def up
    remove_column :tv_shows, :category
  end
  def down
    add_column :tv_shows, :category, :float, after: 'ranking'
    add_index :tv_shows, :category
  end
end
