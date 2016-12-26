require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "account_activation" do
    user=User.first
    user.activation_toke=User.new_token
    mail = UserMailer.account_activation(user)
    
    assert_equal "Account activation", mail.subject
    assert_equal ["#{user.email}"], mail.to
    assert_equal ["#{current_user.email}"], mail.from
    assert_match "Hi", mail.body.encoded
    =end
  end

  test "password_reset" do
    mail = UserMailer.password_reset
    assert_equal "Password reset", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
