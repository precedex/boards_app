class JournalsController < ApplicationController
  def index
    @sites = Site.where(category: 'journals')
    render "sites/index"
  end
end

