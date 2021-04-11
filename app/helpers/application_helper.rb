module ApplicationHelper
  def user_permission
    if user_signed_in?
      render 'layouts/user_controls'
    else
      render 'layouts/user_credentials'
    end
  end

  def current_class?(given_path)
    return 'active' if request.path == given_path
    ''
  end
end
