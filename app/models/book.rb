class Book < ApplicationRecord
  belongs_to :author
  belongs_to :library, optional: true
end
