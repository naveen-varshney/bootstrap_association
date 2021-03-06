class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_action :authenticate_userr!
  protect_from_forgery with: :exception
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
