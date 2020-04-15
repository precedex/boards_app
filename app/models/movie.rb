class Movie < ActiveRecord::Base
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      movie_hash = row.to_hash
      movie = Movie.where(id: movie_hash["id"])

      if movie.count == 1
        movie.first.update_attributes(movie_hash)
      else
        Movie.create!(movie_hash)
      end # end if !movie.nil?
    end # end CSV.foreach
  end # end self.import(file)
end

