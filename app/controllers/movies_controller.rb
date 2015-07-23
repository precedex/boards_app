class MoviesController < ApplicationController
  def index  
    @art_rad_us =           Movie.where(group: "art_rad_us")
    @art_rad_non_us =       Movie.where(group: "art_rad_non_us")
    @art_brach_us =         Movie.where(group: "art_brach_us")
    @art_brach_non_us =     Movie.where(group: "art_brach_non_us")
    @cent_ij_us =           Movie.where(group: "cent_ij_us")
    @cent_ij_non_us =       Movie.where(group: "cent_ij_non_us")
    @swan =                 Movie.where(group: "swan")
    @cent_subclav_us =      Movie.where(group: "cent_subclav_us")
    @cent_subclav_non_us =  Movie.where(group: "cent_subclav_non_us")
    @cent_fem_us =          Movie.where(group: "cent_fem_us")
    @cent_fem_non_us =      Movie.where(group: "cent_fem_non_us")
    @io =                   Movie.where(group: "io")
    @interscalene =         Movie.where(group: "interscalene")
    @supraclavicular =      Movie.where(group: "supraclavicular") 
    @infraclavicular =      Movie.where(group: "infraclavicular")
    @axillary =             Movie.where(group: "axillary")
    @femoral =              Movie.where(group: "femoral")
    @sciatic =              Movie.where(group: "sciatic")
    @lumbar_plexus =        Movie.where(group: "lumbar_plexus")
    @abdominal =            Movie.where(group: "abdominal")
    @pediatric_block =      Movie.where(group: "pediatric_block") 
    @spinal =               Movie.where(group: "spinal")      
    @epidural =             Movie.where(group: "epidural")
    @paravertebral =        Movie.where(group: "paravertebral")
    @intubation_adult =     Movie.where(group: "intubation_adult") 
    @fiberoptic =           Movie.where(group: "fiberoptic") 
    @intubation_video =     Movie.where(group: "intubation_video") 
    @intubation_pediatric = Movie.where(group: "intubation_pediatric")      
    @olv =                  Movie.where(group: "olv") 
    @mask =                 Movie.where(group: "mask")
    @advanced_airway =      Movie.where(group: "advanced_airway") 
    @cric =                 Movie.where(group: "cric")
  end
  
  def regional  
    @interscalene =         Movie.where(group: "interscalene")
    @supraclavicular =      Movie.where(group: "supraclavicular") 
    @infraclavicular =      Movie.where(group: "infraclavicular")
    @axillary =             Movie.where(group: "axillary")
    @femoral =              Movie.where(group: "femoral")
    @sciatic =              Movie.where(group: "sciatic")
    @lumbar_plexus =        Movie.where(group: "lumbar_plexus")
    @abdominal =            Movie.where(group: "abdominal")
    @pediatric_block =      Movie.where(group: "pediatric_block") 
    @spinal =               Movie.where(group: "spinal")      
    @epidural =             Movie.where(group: "epidural")
    @paravertebral =        Movie.where(group: "paravertebral")
  end
  
  def airway  
    @intubation_adult =     Movie.where(group: "intubation_adult") 
    @fiberoptic =           Movie.where(group: "fiberoptic") 
    @intubation_video =     Movie.where(group: "intubation_video") 
    @intubation_pediatric = Movie.where(group: "intubation_pediatric")      
    @olv =                  Movie.where(group: "olv") 
    @mask =                 Movie.where(group: "mask")
    @advanced_airway =      Movie.where(group: "advanced_airway") 
    @cric =                 Movie.where(group: "cric")
  end

  def import
    Movie.import(params[:file])
    redirect_to movies_path
  end
end
