class Informatic < ActiveRecord::Base
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|
      informatic_hash = row.to_hash
      informatic = Informatic.where(id: informatic_hash["id"])

      if informatic.count == 1
        informatic.first.update_attributes(informatic_hash)
      else
        Informatic.create!(informatic_hash)
      end # end if !informatic.nil?
    end # end CSV.foreach
  end # end self.import(file)
  
  INFORMATIC_LIKE = 'topic ILIKE :search OR acronym ILIKE :search OR information ILIKE :search'
  
  def self.search(search)
    if search
      Informatic.where(INFORMATIC_LIKE, search: "%#{search.downcase}%")
    else
      Informatic.all
    end
  end  
  
  def self.unit1
      Informatic.where(unit: '1')
  end
  
  def self.unit2
      Informatic.where(unit: '2')
  end
  
  def self.unit3
      Informatic.where(unit: '3')
  end
  
  def self.unit4
      Informatic.where(unit: '4')
  end
   
end
