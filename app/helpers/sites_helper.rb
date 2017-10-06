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
    "society-us" => "US Anesthesiology Societies",
    "society-state" => "State Anesthesiology Societies",
    "society-intl" => "Intl. Anesthesiology Societies",
    "society-pedi" => "Pediatric Anesthesiology Societies",
    "society-pain" => "Regional Anesthesia & Pain Societies",
    "society-quality" => "Quality & Safety",
    "society-history" => "History of Anesthesia",
    "society-crna" => "Nurse Anesthesia Societies"
  }

  def site_category_title(category)
    CATEGORY_TITLES[category]
  end
end
