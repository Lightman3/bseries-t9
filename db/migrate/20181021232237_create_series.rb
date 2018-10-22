class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.float :ranking
      t.string :category

      t.timestamps
    end
    add_index :series, :title
    add_index :series, :ranking
    add_index :series, :category
  end
end
