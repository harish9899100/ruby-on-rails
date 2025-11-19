class AddFieldsToNotifications < ActiveRecord::Migration[8.0]
  def change
    add_column :notifications, :event, :string
    add_reference :notifications, :article, foreign_key: true
  end
end
