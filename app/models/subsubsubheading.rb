class Subsubsubheading < ActiveRecord::Base
  belongs_to :subsubheading
  
  def self.subsubheading(id)
    Subsubsubheading.where(subsubheading_id: id)
  end 
end
