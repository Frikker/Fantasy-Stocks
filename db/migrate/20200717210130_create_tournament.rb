class CreateTournament < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.boolean :weekly
      t.boolean :daily
      t.integer :winner_id
    end

    add_index :tournaments, :winner_id
  end
end
