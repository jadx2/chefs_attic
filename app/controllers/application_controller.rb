class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :user_signed_in?
  before_action :set_categories

  def set_categories
    @categories = Category.all
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    !current_user.nil?
  end
end
