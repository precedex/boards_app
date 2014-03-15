class Site < ActiveRecord::Base
  default_scope { by_title }

  def self.by_title
    order("lower(title)")
  end
end
