class Account < ApplicationRecord
  validates :terms, presence: true
  belongs_to :supplier
end
