require 'test_helper'

class MyMailMailerTest < ActionMailer::TestCase
  test "signup_confirm" do
    mail = MyMailMailer.signup_confirm
    assert_equal "Signup confirm", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
