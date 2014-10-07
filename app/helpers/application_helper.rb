module ApplicationHelper
  def link_for_admins
    if user_signed_in?
      link_to 'Log out', destroy_user_session_path, method: 'delete'
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
