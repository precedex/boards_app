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
end
