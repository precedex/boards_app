class ResidenciesController < ApplicationController
  def index 
    @acgme = "https://www.acgme.org/acgmeweb/"
    @acgmeanes = "https://www.acgme.org/acgmeweb/tabid/128/ProgramandInstitutionalAccreditation/Hospital-BasedSpecialties/Anesthesiology.aspx"
    @res = "http://www.acgme.org/Specialties/Program-Requirements-and-FAQs-and-Applications/pfcatid/6/Anesthesiology"
    @milestone = "https://www.acgme.org/acgmeweb/Portals/0/PDFs/Milestones/AnesthesiologyMilestones.pdf"
    @aba = "http://www.theaba.org/"
    
    @residencies = Residency.all.by_state
  end

  def import
    Residency.import(params[:file])
    redirect_to residencies_path
  end
end
