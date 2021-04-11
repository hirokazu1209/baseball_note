# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  #アカウント登録後のリダイレクト先
  def after_sign_up_path_for(resource)
    records_path(resource)
  end

  #アカウント編集後のリダイレクト先
  def after_update_path_for(resource)
    records_path(resource)
  end

end
