class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :phone_number
      t.string :address
      t.datetime :invitation_sent_at
      t.timestamps
    end
  end
end
