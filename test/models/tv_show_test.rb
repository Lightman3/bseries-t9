# == Schema Information
#
# Table name: tv_shows
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
#  index_tv_shows_on_category  (category)
#  index_tv_shows_on_ranking   (ranking)
#  index_tv_shows_on_title     (title)
#

require 'test_helper'

class TvShowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
