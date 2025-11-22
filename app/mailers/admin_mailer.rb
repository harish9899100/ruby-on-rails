class AdminMailer < ApplicationMailer
  def user_critical_info_updated(user)
    @user = user
    mail(
      to: 'admin@example.com',
      subject: 'User updated critical info'
    )
  end
end
