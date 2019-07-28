class Site < ActiveRecord::Base
  def self.by_title
    order(Arel.sql("lower(title)"))
  end
end
