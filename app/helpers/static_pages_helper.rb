module StaticPagesHelper
  def tool_definitions(sites)
    sites.map do |content, link, nejm = nil|
      content = "#{h(content)} #{nejm_tag}".html_safe if nejm
      content_tag(:dd, external_link_to(content, link))
    end.join.html_safe
  end

  private

  def nejm_tag
    content_tag(:span, "(NEJM)", style: "font-size: 0.7em;")
  end
end
