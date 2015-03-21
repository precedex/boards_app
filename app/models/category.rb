class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :resources, through: :categorizations

  validates :name, uniqueness: true
  
  extend FriendlyId
  friendly_id :name
end
