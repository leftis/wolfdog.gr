require 'test_helper'

class SubscribersControllerTest < ActionDispatch::IntegrationTest
  test "post to create with empty email should fail" do
    post subscribers_url, params: { email: '' }, xhr: true, as: :json
    assert_response(200, {message: 'Συμπληρώστε με το email σας.'})
  end
  test "post to create email should succedded" do
    post subscribers_url, params: { email: 'lefteris@georgatos.gr' }, xhr: true, as: :json
    assert_response(200, {message: 'Ευχαριστούμε θα σας ειδοποιήσουμε σύντομα.'})
  end
end
