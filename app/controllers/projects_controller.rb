class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @highlight_index = (params[:highlightedProject] or 1).to_i - 1
  end

  def show
    redirect_to projects_url(highlightedProject: params[:id])
  end

end
