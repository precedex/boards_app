module SitesHelper

  CATEGORY_TITLES = {
    "education" => "Miscellaneous",
    "icu" => "ICU",
    "education-regional" => "Regional Anesthesia",
    "education-pediatric" => "Pediatric Anesthesia",
    "education-cardiac" => "Cardiac Anesthesia",
    "education-airway" => "Airway Management",
    "education-video" => "Videos",
    "education-simulation" => "Simulation",
    "journal" => "Journals",
    "blog" => "Blogs",
    "society-us" => "American Societies",
    "society-state" => "State Societies",
    "society-intl" => "International Societies",
    "society-pedi" => "Pediatric Societies",
    "society-pain" => "Regional & Pain Societies",
    "society-quality" => "Quality & Safety",
    "society-history" => "History Societies",
    "society-crna" => "CRNA Societies"
  }

  def site_category_title(category)
    CATEGORY_TITLES[category]
  end
end
