class Question < ActiveRecord::Base
  
  def self.searchstems(search)
    if search
      Question.where('stem LIKE ? OR
                      stem LIKE ? OR
                      stem LIKE ?', 
                      "%#{search}%","%#{search.downcase}%","%#{search.capitalize}%")
    else
      Question.all
    end
  end  
  
  def self.searchchoices(search)
    if search
      Question.where('option_a LIKE ? OR option_a LIKE ? OR option_a LIKE ? OR
                      option_b LIKE ? OR option_b LIKE ? OR option_b LIKE ? OR
                      option_c LIKE ? OR option_c LIKE ? OR option_c LIKE ? OR
                      option_d LIKE ? OR option_d LIKE ? OR option_d LIKE ? OR
                      option_e LIKE ? OR option_e LIKE ? OR option_e LIKE ?',     
                      "%#{search}%","%#{search.downcase}%","%#{search.capitalize}%",
                      "%#{search}%","%#{search.downcase}%","%#{search.capitalize}%",
                      "%#{search}%","%#{search.downcase}%","%#{search.capitalize}%",
                      "%#{search}%","%#{search.downcase}%","%#{search.capitalize}%",
                      "%#{search}%","%#{search.downcase}%","%#{search.capitalize}%")
    else
      Question.all
    end
  end  
  
  def self.random_ten
    Question.all.sample(10)
  end
  
  
end
