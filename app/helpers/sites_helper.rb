module SitesHelper
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
