# == Schema Information
#
# Table name: collections
#
#  id          :integer          not null, primary key
#  description :text
#  image_url   :string
#  name        :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tv_show_id  :integer
#
# Indexes
#
#  index_collections_on_tv_show_id  (tv_show_id)
#

require 'test_helper'

class CollectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
