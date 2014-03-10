module SitesHelper
  def site_list(sites)
    list_items = sites.map do |content, link|
      content_tag(:li, external_link_to(content, link))
    end.join.html_safe
    content_tag(:ul, list_items)
  end

  def link_to_sdn_forum
    external_link_to image_tag("SDN2.jpg"), "http://forums.studentdoctor.net/forums/anesthesiology.45/"
  end

  CATEGORY_TITLES = {
    "education" => "Miscellaneous",
    "education-regional" => "Regional Anesthesia",
    "education-video" => "Videos",
    "education-simulation" => "Simulation",
    "journal" => "Journals",
    "blog" => "Blogs",
    "society-us" => "US Anesthesiology Societies",
    "society-state" => "State Anesthesiology Societies",
    "society-intl" => "Intl. Anesthesiology Societies",
    "society-pain" => "Regional Anesthesia & Pain Societies",
    "society-crna" => "Nurse Anesthesia Societies"
  }

  def site_category_title(category)
    CATEGORY_TITLES[category]
  end
end
