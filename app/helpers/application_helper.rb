module ApplicationHelper
  def link_for_admins
    if user_signed_in?
      content_tag(:div) do
        content_tag(:li, "Hello, #{current_user.email}") +
        content_tag(:li, link_to('New Plant', new_plant_path)) +
        content_tag(:li, link_to('Log out', destroy_user_session_path, method: 'delete'))
      end
    else
      link_to 'WebMaster', new_user_session_path
    end
  end

  def flash_class(level)
    case level
    when :notice then 'info'
    when :success then 'success'
    when :error then 'error'
    when :alert then 'warning'
    end
  end
end
