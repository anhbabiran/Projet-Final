require 'test_helper'

class MailAdminMailerTest < ActionMailer::TestCase
  test "signup_confirm" do
    mail = MailAdminMailer.signup_confirm
    assert_equal "Signup confirm", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
