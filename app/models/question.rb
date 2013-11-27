class Question < ActiveRecord::Base
  
  def self.search(search)
    if search
      Question.where('stem LIKE ?', "%#{search}%").all
    else
      Question.all
    end
  end  
end
