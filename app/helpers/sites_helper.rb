module SitesHelper
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
    current_page?("/sites/education/regional") ||
    current_page?("/sites/education/video") ||
    current_page?("/sites/education/simulation") ||
    current_page?("/sites/education")
  end

  def on_societies_path?
    current_page?("/sites/societies/us") ||
    current_page?("/sites/societies/state") ||
    current_page?("/sites/societies/intl") ||
    current_page?("/sites/societies/crna") ||
    current_page?("/sites/societies/pain")
  end
end
