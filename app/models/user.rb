class User < ApplicationRecord
  validates :name, presence: true
  before_validation :titleize_name
  after_validation :log_errors

  private

  def titleize_name
    self.name = name.downcase.titleize if name.present?
    Rails.logger.info("Name titleized to #{name}")
  end

  def log_errors
    return unless errors.any?

    Rails.logger.error("Validation failed: #{errors.full_messages.join(', ')}")
  end
end
