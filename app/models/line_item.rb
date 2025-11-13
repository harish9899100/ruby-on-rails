class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  validates :order, absence: true
end
