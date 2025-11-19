class AddTotalPriceToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :total_price, :decimal
  end
end
