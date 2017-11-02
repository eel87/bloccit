module TopicsHelper
  def user_is_authorized_for_topics?
    current_user && current_user.admin?
  end
  
  def user_is_authorized_for_edit_topics?
    current_user && current_user.moderator?
  end
  
  def user_is_authorized_for_edit_create_post?(post)
    current_user && (current_user == post.user || current_user.moderator?)
  end
end
