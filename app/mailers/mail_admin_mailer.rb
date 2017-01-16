class MailAdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mail_admin_mailer.signup_confirm.subject
  #
  def signup_confirm(user_ad)
    @user_ad = user_ad
    mail to: user_ad.email, subject: "Thank you for signing up"
  end
end
