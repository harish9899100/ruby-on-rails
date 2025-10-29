class AddDetailsToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :part_number, :string
    add_column :products, :price, :decimal
  end
end
