class Site < ActiveRecord::Base
  def self.by_title
    order("lower(title)")
  end
end
