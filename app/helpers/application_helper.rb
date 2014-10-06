module ApplicationHelper
  def link_for_admins
    if user_signed_in?
      link_to 'Log out', destroy_user_session_path, method: 'delete'
    else
      link_to 'WebMaster', new_user_session_path
    end
  end
end
