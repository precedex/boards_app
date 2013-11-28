class Question < ActiveRecord::Base
  
  def self.search(search)
    if search
      Question.where('stem LIKE ? OR stem LIKE ?', "%#{search}%".downcase, "%#{search}%")
    else
      Question.all
    end
  end  
end
