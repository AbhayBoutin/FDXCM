class ApplicationController < ActionController::Base
  protect_from_forgery

  # CanCan Check Authorization on every action
  # check_authorization

  # CanCan Failure
  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to root_url, :alert => exception.message
  # end
end
