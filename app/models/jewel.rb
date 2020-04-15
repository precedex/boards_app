class Jewel < ActiveRecord::Base
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      jewel_hash = row.to_hash
      jewel = Jewel.where(id: jewel_hash["id"])

      if jewel.count == 1
        jewel.first.update_attributes(jewel_hash)
      else
        Jewel.create!(jewel_hash)
      end # end if !jewel.nil?
    end # end CSV.foreach
  end # end self.import(file)
  
  def self.by_sku
    order("sku")
  end
end
