# == Schema Information
#
# Table name: series
#
#  id          :integer          not null, primary key
#  category    :string
#  description :text
#  image_url   :string
#  ranking     :float
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_series_on_category  (category)
#  index_series_on_ranking   (ranking)
#  index_series_on_title     (title)
#

class Serie < ApplicationRecord
end
