module SitesHelper

  CATEGORY_TITLES = {
    "education" => "Miscellaneous",
    "icu" => "ICU",
    "education-regional" => "Regional",
    "education-pediatric" => "Pediatric",
    "education-cardiac" => "Cardiac",
    "education-airway" => "Airway",
    "education-video" => "Videos",
    "education-simulation" => "Simulation",
    "journal" => "Journals",
    "blog" => "Blogs",
    "society-us" => "American",
    "society-state" => "State",
    "society-intl" => "International",
    "society-pedi" => "Pediatric",
    "society-pain" => "Regional & Pain",
    "society-quality" => "Quality & Safety",
    "society-history" => "History",
    "society-crna" => "CRNA"
  }

  def site_category_title(category)
    CATEGORY_TITLES[category]
  end
end
