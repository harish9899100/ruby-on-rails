class Author < ApplicationRecord
  has_many :books, before_add: %i[check_limit calculate_shipping_charges]

  def check_limit(_book)
    return unless books.count >= 5

    errors.add(:base, 'Cannot add more than 5 books for this author')
    throw(:abort)
  end

  def calculate_shipping_charges(book)
    weight_in_pounds = book.weight_in_pounds || 1
    weight_in_pounds * 2
  end
end
