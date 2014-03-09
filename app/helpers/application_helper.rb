module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def external_link_to(name = nil, options = nil, html_options = nil)
    link_to(name, options, (html_options || {}).merge(target: "_blank"))
  end
end
