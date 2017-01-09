# Preview all emails at http://localhost:3000/rails/mailers/my_mail_mailer
class MyMailMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/my_mail_mailer/signup_confirm
  def signup_confirm
    MyMailMailer.signup_confirm
  end

end
