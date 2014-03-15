module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def external_link_to(name = nil, options = nil, html_options = nil, &block)
    if block_given?
      options = (options || {}).merge(target: "_blank")
    else
      html_options = (html_options || {}).merge(target: "_blank")
    end
    link_to(name, options, html_options, &block)
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

  def on_books_path?
    current_page?(category_resources_path(1)) ||
    current_page?(category_resources_path(2)) ||
    current_page?(category_resources_path(3)) ||
    current_page?(category_resources_path(4)) ||
    current_page?(category_resources_path(5)) ||
    current_page?(category_resources_path(6)) ||
    current_page?(category_resources_path(7)) ||
    current_page?(category_resources_path(8)) ||
    current_page?(category_resources_path(9)) ||
    current_page?(resources_path)
  end

  def on_exams_path?
    current_page?(written_boards_path) ||
    current_page?(oral_boards_path) ||
    current_page?(ped_boards_path)
  end

  def on_education_path?
    current_page?(courses_path) ||
    current_page?(course_path("regional")) ||
    current_page?(course_path("video")) ||
    current_page?(course_path("simulation"))
  end

  def on_societies_path?
    current_page?("/sites/societies/us") ||
    current_page?("/sites/societies/state") ||
    current_page?("/sites/societies/intl") ||
    current_page?("/sites/societies/crna") ||
    current_page?("/sites/societies/pain")
  end
end
