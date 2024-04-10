class MachinesController < ApplicationController

  before_action :set_machine, only: [:show]

  def index
    @machines = Machine.all.order(:tonnage)
  end

  def show
    # create @settings by finding all settings associated with the machine
    @settings = @machine.settings
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)

    if @machine.save
      redirect_to @machine, notice: 'Machine was successfully created.'
    else
      render :new
    end
  end

  private

  def machine_params
    params.require(:machine).permit(:machine_name, :tonnage, :manufacturer, :site_id)
  end

  def set_machine
    @machine = Machine.find(params[:id])
  end

end
