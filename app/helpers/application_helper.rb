module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def external_link_to(name = nil, options = nil, html_options = nil)
    link_to(name, options, (html_options || {}).merge(target: "_blank"))
  end

  def old_style_error_div(model)
    return unless model.errors.any?

    summary = "#{pluralize(model.errors.count, 'error')} prohibited this #{model.class.name.downcase} from being saved:"
    error_items = model.errors.full_messages.map do |msg|
      content_tag(:li, msg)
    end.join(" ").html_safe

    content_tag(:div,
                content_tag(:h2, summary) + content_tag(:ul, error_items),
                id: "error_explanation")
  end
end
