class MoveCategoriesRef < ActiveRecord::Migration[5.2]
  def up
    execute('UPDATE tv_shows SET category_id = (SELECT id FROM categories where categories.name = tv_shows.category)')
  end
  def down
    execute('UPDATE tv_shows SET category = (SELECT name FROM categories where categories.id = tv_shows.category_id)')
  end
end
