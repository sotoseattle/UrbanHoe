module ApplicationHelper
  def link_for_admins
    if user_signed_in?
      content_tag(:div) do
        content_tag(:li, "Hello, #{current_user.email}") +
        content_tag(:li, link_to('Log out', destroy_user_session_path, method: 'delete'))
      end
    else
      link_to 'WebMaster', new_user_session_path
    end
  end
end
