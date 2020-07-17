class CreateUserStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_stocks do |t|
      t.references :user
      t.references :stock
    end

    add_index :user_stocks, %i[user_id stock_id]
  end
end
