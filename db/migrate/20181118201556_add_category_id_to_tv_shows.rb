class AddCategoryIdToTvShows < ActiveRecord::Migration[5.2]
  def change
    add_column :tv_shows, :category_id, :integer, after: :category
    add_index :tv_shows, :category_id
  end
end
