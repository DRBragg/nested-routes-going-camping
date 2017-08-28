class SuppliesController < ApplicationController
  def index
    if params[:camper_id]
      @camper = Camper.find(params[:camper_id])
      @title = "Supplies Brought by #{@camper.name}: "
      @supplies = Supply.all.where(camper: @camper)
    else
      @title = "All Supplies:"
      @supplies = Supply.all
    end
  end
end
