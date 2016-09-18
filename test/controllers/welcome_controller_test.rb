require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test 'index returns a welcome message' do
    get '/'
    assert_select 'h1', 'Welcome'
  end
end
