class Subsubheading < ActiveRecord::Base
  belongs_to :subheading
  has_many :subsubsubheadings
  
  def self.subheading(id)
    Subsubheading.where(subheading_id: id)
  end 
end
