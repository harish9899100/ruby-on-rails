class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products, options: 'ENGINE=BLACKHOLE' do |t|
      t.string :name, null: false
      t.references :category
      t.belongs_to :category
    end
  end
end
