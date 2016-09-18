class SubscribersController < ApplicationController
  def create
    session[:subscribed] = true
    begin
      Subscriber.create!(email: subscriber_email)
    rescue ActionController::ParameterMissing, ActiveRecord::RecordInvalid
      session[:subscribed] = false
      @error = 'Η ηλ.διεύθυνση ειναι κενή ή λάθος.'
    ensure
      render status: :ok
    end
  end

  private

  def subscriber_email
    params.require(:email)
  end
end
