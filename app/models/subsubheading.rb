class Subsubheading < ActiveRecord::Base
  belongs_to :subheading
  has_many :subsubsubheadings
end
