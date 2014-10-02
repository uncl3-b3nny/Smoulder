module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

    def user_login_links
    if user_signed_in?
      link_to "Log Out", destroy_user_session_path, method: :delete
    else
      link_to "Log In", new_user_session_path
    end
  end

end
