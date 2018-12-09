class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.references :tv_show, foreign_key: true
      t.string :name
      t.string :image_url
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
