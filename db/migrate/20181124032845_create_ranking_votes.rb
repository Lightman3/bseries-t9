class CreateRankingVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :ranking_votes do |t|
      t.references :tv_show, foreign_key: true
      t.string :email
      t.string :ip
      t.integer :evaluation, nullable: false

      t.timestamps
    end
  end
end
