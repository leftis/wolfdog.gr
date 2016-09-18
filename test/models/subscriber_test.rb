require 'test_helper'

class SubscriberTest < ActiveSupport::TestCase
  test "that it validates the email" do
    assert_not(Subscriber.new(email: 'thisisntemail').valid?)
    assert_not(Subscriber.new(email: 'thisisntemail@.com').valid?)
    assert(Subscriber.new(email: 'this@email.com').valid?)
  end
end
