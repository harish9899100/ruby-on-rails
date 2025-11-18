class Book < ApplicationRecord
  belongs_to :library, optional: true, touch: true
  after_touch do
    Rails.logger.info('A Book was touched')
  end
end

class Library < ApplicationRecord
  has_many :books
  after_touch :log_when_books_or_library_touched

  private

  def log_when_books_or_library_touched
    Rails.logger.info('Book/Library was touched')
  end
end
