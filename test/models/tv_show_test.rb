# == Schema Information
#
# Table name: tv_shows
#
#  id          :integer          not null, primary key
#  category    :float
#  description :text
#  image_url   :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#
# Indexes
#
#  index_tv_shows_on_category     (category)
#  index_tv_shows_on_category_id  (category_id)
#  index_tv_shows_on_title        (title)
#

require 'test_helper'

class TvShowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
