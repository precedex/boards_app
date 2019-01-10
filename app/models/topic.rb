class Topic < ActiveRecord::Base
  self.primary_key = "id"
  has_many :topicalizations
  has_many :questions, through: :topicalizations

  validates :name, uniqueness: true
end
