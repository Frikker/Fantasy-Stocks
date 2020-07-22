class AddStartPriceToUserStocks < ActiveRecord::Migration[6.0]
  def change
    add_column :user_stocks, :start_price, :float
    add_column :user_stocks, :profit, :float
  end
end
