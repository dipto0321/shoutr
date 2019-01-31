# frozen_string_literal: true

module ShoutsHelper
  def like_button(shout)
    if current_user.liked?(shout)
      link_to unlike_shout_path(shout), method: :delete do
        render html: '<i class="fas fa-thumbs-down"></i>'.html_safe
      end
    else
      link_to like_shout_path(shout), method: :post do
        render html: '<i class="fas fa-thumbs-up"></i>'.html_safe
      end
    end
  end

  def autolink(text)
    text.gsub(/@\w+/) { |mention| link_to mention, user_path(mention[1..-1]) }.html_safe
  end
end
