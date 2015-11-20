class Provider < ActiveRecord::Base
  require 'csv'
  
  scope :lname, -> (last) { where("last ILIKE ?", "#{last}%")}
  scope :hospital, -> (hospital) { where("aff1 ILIKE ? OR aff2 ILIKE ? or aff3 ILIKE ? or aff4 ILIKE?", "#{hospital}%", "#{hospital}%", "#{hospital}%", "#{hospital}%")}
  scope :employer, -> (employer) { where("name_lgl ILIKE ? OR name_common ILIKE ?", "#{employer}%","#{employer}%")}
  scope :state, -> (state) { where("state ILIKE ?", "#{state}%")}
  
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

  
end
