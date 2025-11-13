class Person < ApplicationRecord
  validates :phone_number, :address, absence: true, if: :invited?

  def invited?
    invitation_sent_at.present?
  end
end
