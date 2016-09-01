class Subheading < ActiveRecord::Base
  belongs_to :heading
  has_many :subsubheadings
  
  def self.heading(id)
    Subheading.where(heading_id: id)
  end  
end
