class CreateLeaderboard < ActiveRecord::Migration[6.0]
  def change
    create_table :leaderboards do |t|
      t.references :user
      t.references :tournament
      t.float :profit
      t.integer :place
    end

    add_index :leaderboards, %i[user_id tournament_id]
  end
end
