class Categorization < ActiveRecord::Base 
  belongs_to :resource
  belongs_to :category
end