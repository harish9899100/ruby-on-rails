class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users, primary_key: %i[id name] do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
