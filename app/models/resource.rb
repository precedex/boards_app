class Resource < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
  MATCH_LIKE = 'title ILIKE :search OR authors ILIKE :search'

  validates :title, presence: true

  def self.by_title
    order(Arel.sql("lower(title)"))
  end
  
  def self.searchtitlesandauthors(search)
    if search
      Resource.where(MATCH_LIKE, search: "%#{search.downcase}%")
    else
      Resource.all
    end
  end
  
end
