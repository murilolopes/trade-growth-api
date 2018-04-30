# frozen_string_literal: true

class Registrations::RegistrationsController < DeviseTokenAuth::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def new
    super
  end

  def create
    puts 1
    super
    puts 2
    require 'pagarme'
    PagarMe.api_key = "ak_test_fwVPLNxWd3BnC7yRG8UMYqKYD47NSW"
    puts 3
    plan = PagarMe::Plan.find_by_id("294460")
    puts 4
    subscription = PagarMe::Subscription.new({
      :payment_method => 'boleto',
      :postback_url => "http://test.com/postback",
      :customer => {
        :email => 'muriloangelo16@gamil.com'
      }
    })
    puts 5
    subscription.plan = plan

    subscription.create
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end

  def cancel
    super
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  end

  def after_sign_up_path_for(resource)
    super(resource)
  end

  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end
end
