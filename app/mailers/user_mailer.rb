class UserMailer < ApplicationMailer
  def deletion_email(email:, name:)
    @name = name
    mail(
      to: 'admin@example.com',
      subject: 'User deleted'
    )
  end
end
