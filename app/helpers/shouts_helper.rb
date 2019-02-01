# frozen_string_literal: true

module ShoutsHelper
  def shout_form_for(content_type, btn_style)
    simple_form_for(Shout.new, url: content_type.new) do |form|
      render(html: '<div class="form-row"><div class="col-10">'.html_safe) +
        form.simple_fields_for(:content) { |content_form| yield(content_form) } +
        render(html: '</div>'.html_safe) +
        render(html: '<div class="col-2">'.html_safe) +
        form.button(:submit, 'Shout!', class: "btn-block #{btn_style}") +
        render(html: '</div></div>'.html_safe)
    end
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

  def autolink(text)
    text.gsub(/@\w+/) { |mention| link_to mention, user_path(mention[1..-1]) }.html_safe
  end
end
