class RemoveRankingFromTvShows < ActiveRecord::Migration[5.2]
  def up
    remove_column :tv_shows, :ranking
  end
  def down
    add_column :tv_shows, :ranking, :float, after: 'image_url'
    add_index :tv_shows, :ranking
  end
end
