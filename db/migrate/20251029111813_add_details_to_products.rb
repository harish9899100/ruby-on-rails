class AddDetailsToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :price, :decimal, precision: 8, scale: 2, comment: 'The price of the product in USD'
    add_column :products, :stock_quantity, :integer, comment: 'The current stock quantity of the product'
  end
end
