class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    boards_path # 一覧画面にリダイレクト
  end

  # 新規登録後のリダイレクト先
  def after_sign_up_path_for(resource)
    boards_path # 一覧画面にリダイレクト
  end



  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
