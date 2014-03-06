class Resource < ActiveRecord::Base  
  has_many :categorizations
  has_many :categories, through: :categorizations
end

class Categorization < ActiveRecord::Base 
  belongs_to :resource
  belongs_to :category
end

class Category < AciveRecord::Base
  has_many :categorizations
  has_many :resources, through: :categorizations
end

  
 # def self.search(search)
 #   if search
  #    find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
  #  else
 #     find(:all)
 #   end
#  end  
# end