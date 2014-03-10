class Resource < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  validates :title, presence: true

  def self.by_title
    order("lower(title)")
  end
end
