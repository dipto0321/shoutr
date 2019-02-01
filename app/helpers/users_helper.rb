# frozen_string_literal: true

module UsersHelper
  def follow_btn(user)
    unless current_user == user
      if current_user.following?(user)
        button_to 'Unfollow', unfollow_user_path(user),
                  method: :delete,
                  class: 'btn btn-sm btn-inline btn-warning'
      else
        button_to 'Follow', follow_user_path(user),
                  method: :post,
                  class: 'btn btn-sm btn-inline btn-primary'
      end
    end
  end
end
