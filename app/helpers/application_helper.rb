module ApplicationHelper
  def link_for_admins
    if user_signed_in?
      content_tag(:div) do
        content_tag(:div, "Hello, #{current_user.email}") +
        content_tag(:span, link_to('Add New Plant', new_plant_path)) +
        content_tag(:span, ' | ') +
        content_tag(:span, link_to('See All Plants', plants_path)) +
        content_tag(:span, ' | ') +
        content_tag(:span, link_to('Log out', destroy_user_session_path, method: 'delete'))
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
