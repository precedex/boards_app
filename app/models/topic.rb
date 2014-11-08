class Topic < ActiveRecord::Base
  has_many :topicalizations
  has_many :questions, through: :topicalizations

  validates :name, uniqueness: true
end
