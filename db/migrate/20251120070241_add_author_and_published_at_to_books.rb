class AddAuthorAndPublishedAtToBooks < ActiveRecord::Migration[8.0]
  def change
    add_reference :books, :author, foreign_key: true
    add_column :books, :published_at, :datetime
  end
end
