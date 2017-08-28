class CampersController < ApplicationController

  def index
    if params[:campsite_id]
      @campsite = Campsite.find(params[:campsite_id])
      @title = "Campers bunking in #{@campsite.name}: "
      @campers = Camper.all.where(campsite: @campsite)
    else
      @title = "All Campers:"
      @campers = Camper.all
    end
  end
end
