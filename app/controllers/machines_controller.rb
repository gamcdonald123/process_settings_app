class MachinesController < ApplicationController

  before_action :set_machine, only: [:show]

  def index
    @machines = Machine.all
  end

  def show
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
  end

  private

  def machine_params
    params.require(:machine).permit(:machine_name, :tonnage, :manufacturer)
  end

  def set_machine
    @machine = Machine.find(params[:id])
  end

end
