class Question < ActiveRecord::Base

  def self.searchstems(search)
    if search
      Question.where('stem ILIKE ?', "%#{search.downcase}%")
    else
      Question.all
    end
  end

  def self.searchchoices(search)
    if search
      Question.where('option_a ILIKE :search OR
                      option_b ILIKE :search OR
                      option_c ILIKE :search OR
                      option_d ILIKE :search OR
                      option_e ILIKE :search',
                      search: "%#{search.downcase}%")
    else
      Question.all
    end
  end

  def self.random_ten
    Question.all.sample(10)
  end


end
