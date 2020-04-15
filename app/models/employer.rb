class Employer < ActiveRecord::Base
  require 'csv'

  def self.by_state(state)
    if state == ""
      Employer.all
    else
      Employer.where("locations ILIKE ?", "% #{state}")
    end  
  end
  
  def self.by_name(name)
    if name
      Employer.where("name_lgl ILIKE ?", "%#{name}%")
    else
      Employer.all
    end
  end
  
  def self.by_employer_type(employer_type)
    if employer_type == "md"
      Employer.where(employer_type: "md")
    elsif employer_type == "crna"
      Employer.where(employer_type: "crna")
    elsif employer_type == "aa"
      Employer.where(employer_type: "aa")
    else
      Employer.all
    end
  end
    

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      employer_hash = row.to_hash
      employer = Employer.where(id: employer_hash["id"])

      if employer.count == 1
        employer.first.update_attributes(employer_hash)
      else
        Employer.create!(employer_hash)
      end # end if !employer.nil?
    end # end CSV.foreach
  end # end self.import(file)

  
end
