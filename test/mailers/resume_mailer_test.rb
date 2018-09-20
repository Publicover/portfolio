require 'test_helper'

class ResumeMailerTest < ActionMailer::TestCase
  test "request_resume" do
    mail = ResumeMailer.request_resume
    assert_equal "Request resume", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "send_resume" do
    mail = ResumeMailer.send_resume
    assert_equal "Send resume", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
