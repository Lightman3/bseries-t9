# == Schema Information
#
# Table name: ranking_votes
#
#  id         :integer          not null, primary key
#  email      :string
#  evaluation :integer
#  ip         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tv_show_id :integer
#
# Indexes
#
#  index_ranking_votes_on_tv_show_id  (tv_show_id)
#

class RankingVote < ApplicationRecord
  belongs_to :tv_show

  validates :evaluation, presence: true
end
