# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def create
    @user=User.new(sign_up_params)
  end
  private

  def sign_up_params
    params.require(:user).permit(:firstname,:lastname,:username,:contact,:email,:password,:password_confirmation)
  end
end
