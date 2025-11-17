class User < ApplicationRecord
  before_create :set_default_role
  around_create :log_creation
  after_create :send_welcome_email

  private

  def set_default_role
    self.role = 'user'
    Rails.logger.info('User role set to default: user')
  end

  def log_creation
    Rails.logger.info("Creating user with email: #{email}")
    yield
    Rails.logger.info("User created with email: #{email}")
  end

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_later
    Rails.logger.info("User welcome email sent to: #{email}")
  end
end
