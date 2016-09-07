class Subheading < ActiveRecord::Base
  belongs_to :heading
  has_many :subsubheadings
end
