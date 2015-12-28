require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "leave_confirmation" do
    mail = UserMailer.leave_confirmation
    assert_equal "Leave confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
