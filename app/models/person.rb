class Person < ApplicationRecord
  # validates :name, presence: true, length: { minimum: 3 }
  validate do |person|
    errors.add :base, :invalid, message: 'This person is invalid becaues .....'
  end
end
