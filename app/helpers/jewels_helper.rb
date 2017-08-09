module JewelsHelper
  
  COLLECTION_TITLES = {
    "bauble" => "BAUBLE",
    "cali" => "CALI",
    "surf" => "SURF",
    "oceania" => "OCEANIA",
    "facets" => "FACETS",
  }

  def jewel_collection_title(collection)
    COLLECTION_TITLES[collection]
  end
  
end
