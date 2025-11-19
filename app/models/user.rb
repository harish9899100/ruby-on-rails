class User < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :notifications, dependent: :destroy

  before_save :log_email_change
  before_destroy :check_admin_count
  around_destroy :log_destroy_operation
  after_destroy :notify_users

  private

  def admin?
    role == 'admin'
  end

  def check_admin_count
    throw :abort if admin? && User.where(role: 'admin').count == 1
    Rails.logger.info('Checked the admin count')
  end

  def log_email_change
    return unless email_changed?

    Rails.logger.info("Email change from #{email_was} to #{email}")
  end

  def log_destroy_operation
    Rails.logger.info("About to destroy user with ID #{id}")
    yield
    Rails.logger.info("User with ID #{id} destroyed successfully")
  end

  def notify_users
    UserMailer.deletion_email(email: email, name: name).deliver_later
    Rails.logger.info('Notification sent to other users about user deletion')
  end
end
