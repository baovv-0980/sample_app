module ApplicationHelper
  def full_title page_title
    base_title = I18n.t "title_end"
    if page_title.blank?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
