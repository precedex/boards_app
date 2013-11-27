class Question < ActiveRecord::Base
  
  def self.search(search)
    if search
      find(:all, :conditions => ['stem LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end  
end
