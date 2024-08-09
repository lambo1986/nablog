class SubscriptionsController < ApplicationController
  def create
    subscriber = Subscriber.new(subscriber_params)

    if subscriber.save
      SubscriberMailer.welcome_email(subscriber).deliver_now

      redirect_to root_path, notice: 'Thank you for subscribing!'
    else
      redirect_to root_path, alert: 'There was an error with your subscription. Please try again.'
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email)
  end
end
