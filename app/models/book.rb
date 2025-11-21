class Book < ApplicationRecord
  self.table_name = 'my_books'
  validates :title, presence: true
  after_create :log_new_book

  private

  def log_new_book
    puts 'A new book was registered'
  end
end
