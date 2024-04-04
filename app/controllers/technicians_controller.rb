class TechniciansController < ApplicationController

  def index
    @technicians = Technician.all
  end

  def show
    @technician = Technician.find(params[:id])
  end
end
