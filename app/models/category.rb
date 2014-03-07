class Category < AciveRecord::Base
  has_many :categorizations
  has_many :resources, through: :categorizations
end