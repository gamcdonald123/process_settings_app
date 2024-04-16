class ToolsController < ApplicationController

  def index
    @tools = Tool.all
    @tools = @tools.search(params[:query]) if params[:query].present?
    @pagy, @tools = pagy @tools.reorder(sort_column => sort_direction), items: params.fetch(:count, 10)
  end

  def sort_column
    %w{ name maintainx_id tool_type }.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction

  def show
    @tool = Tool.find(params[:id])
  end
end
