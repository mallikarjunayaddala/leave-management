class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.leave_confirmation.subject
  #
  def leave_confirmation(user)
    @leave = user
    mail to: "ecepraveen100@gmail.com", subject: "Leave Request", cc: "pravin0293@gmail.com"
  end
end
