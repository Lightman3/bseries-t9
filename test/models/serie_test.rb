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

require 'test_helper'

class SerieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
