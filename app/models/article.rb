class Article < ApplicationRecord
  belongs_to :user
  has_many :notifications, dependent: :destroy

  # before_destroy { throw :abort if still_active? }
  after_destroy :log_destroy_action
  after_create :create_welcome_notification

  after_touch { Rails.logger.info('You have touched an object') }
  after_initialize { Rails.logger.info('You have initialized an object!') }
  after_find { Rails.logger.info('You have found an object!') }

  def still_active?
    false
  end

  private

  def log_destroy_action
    Rails.logger.info('Article destroyed')
  end

  def create_welcome_notification
    notifications.create(event: 'sign_up')
  end
end
