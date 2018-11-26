class InsertRakingVotes < ActiveRecord::Migration[5.2]
  def up
    RankingVote.transaction do
      TvShow.where('id < 100').pluck(:id).each do |tv_show_id|
        RankingVote.create!(
          email: Faker::Internet.email,
          evaluation: 9,
          ip: Faker::Internet.ip_v4_address,
          tv_show_id: tv_show_id
        )
      end
      TvShow.where('id >= 100').pluck(:id).each do |tv_show_id|
        rand(3..27).times do
          RankingVote.create!(
            email: Faker::Internet.email,
            evaluation: rand(1..10),
            ip: Faker::Internet.ip_v4_address,
            tv_show_id: tv_show_id
          )
        end
      end
    end
  end
  def down
    RankingVote.destroy_all
  end
end
