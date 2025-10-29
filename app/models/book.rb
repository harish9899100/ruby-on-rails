class Book < ApplicationRecord
  self.table_name = 'my_books'
  validates :title, presence: true
end
