class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :company
      t.float :price
      t.float :price_on_current_hour
    end
  end
end
