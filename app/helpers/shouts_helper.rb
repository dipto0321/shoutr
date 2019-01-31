# frozen_string_literal: true

module ShoutsHelper
  def avatar(user)
    email_digest = Digest::MD5.hexdigest(user.email)
    gravatar_url = "//www.gravatar.com/avatar/#{email_digest}"
    image_tag(gravatar_url)
  end

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
end
