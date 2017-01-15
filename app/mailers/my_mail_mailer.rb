class MyMailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.my_mail_mailer.signup_confirm.subject
  #
  def signup_confirm(user_lap)
    @user_lap = user_lap
    mail to: user_lap.email, subject: "Thank you for signing up"
  end
end
