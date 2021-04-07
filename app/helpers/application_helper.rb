module ApplicationHelper
  def user_permission
    if user_signed_in?
      render 'layouts/user_controls'
    else
      render 'layouts/user_credentials'
    end
  end
end
