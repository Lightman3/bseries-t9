class CreateTvShows < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_shows do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.float :ranking
      t.string :category

      t.timestamps
    end
    add_index :tv_shows, :title
    add_index :tv_shows, :category
    add_index :tv_shows, :ranking
  end
end
