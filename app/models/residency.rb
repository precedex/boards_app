class Residency < ActiveRecord::Base
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      residency_hash = row.to_hash
      residency = Residency.where(id: residency_hash["id"])

      if residency.count == 1
        residency.first.update_attributes(residency_hash)
      else
        Residency.create!(residency_hash)
      end # end if !residency.nil?
    end # end CSV.foreach
  end # end self.import(file)
  
  RESIDENCY_LIKE = 'program ILIKE :search'
  
  def self.search(search)
    if search
      Residency.where(RESIDENCY_LIKE, search: "%#{search.downcase}%")
    else
      Residency.all
    end
  end
end
