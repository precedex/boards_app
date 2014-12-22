class Lecture < ActiveRecord::Base
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      lecture_hash = row.to_hash
      lecture = Lecture.where(id: lecture_hash["id"])

      if lecture.count == 1
        lecture.first.update_attributes(lecture_hash)
      else
        Lecture.create!(lecture_hash)
      end # end if !lecture.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
