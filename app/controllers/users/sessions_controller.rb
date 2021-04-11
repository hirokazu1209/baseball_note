# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def after_sign_in_path_for(resource)
    records_path(resource)
  end 
  #ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
    root_path(resource)
  end 

end
