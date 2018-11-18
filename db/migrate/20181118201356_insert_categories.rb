class InsertCategories < ActiveRecord::Migration[5.2]
  def up
    TvShow.select('category').distinct.pluck('category').each do |category|
      Category.where(name: category).first_or_create
    end
  end
  def down
  end
end
