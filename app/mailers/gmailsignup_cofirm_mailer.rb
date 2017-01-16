class GmailsignupCofirmMailer < ApplicationMailer

  def signup_confirm(user_admin)
    @user_admin = user_admin
    mail to: user_admin.email, subject: "Thank you for signing up"
  end
end
