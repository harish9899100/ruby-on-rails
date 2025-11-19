class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :article, optional: true
end
