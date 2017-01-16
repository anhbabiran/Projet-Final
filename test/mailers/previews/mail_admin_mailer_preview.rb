# Preview all emails at http://localhost:3000/rails/mailers/mail_admin_mailer
class MailAdminMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mail_admin_mailer/signup_confirm
  def signup_confirm
    MailAdminMailer.signup_confirm
  end

end
