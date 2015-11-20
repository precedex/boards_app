class Provider < ActiveRecord::Base
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      provider_hash = row.to_hash
      provider = Provider.where(id: provider_hash["id"])

      if provider.count == 1
        provider.first.update_attributes(provider_hash)
      else
        Provider.create!(provider_hash)
      end # end if !provider.nil?
    end # end CSV.foreach
  end # end self.import(file)
  
  
  scope :lname, -> (last) { where("last ILIKE ?", "#{last}%")}
  scope :hospital, -> (hospital) { where("aff1 ILIKE ?", "#{hospital}%")}
  scope :employer, -> (employer) { where("name_lgl ILIKE ?", "#{employer}%")}
  scope :state, -> (state) { where("state ILIKE ?", "#{state}%")}
  
end
