class ProjectsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_project, only: [:show, :edit, :update, :destroy]
  
    def index
      @projects = current_user.projects
    end
  
    def show
    end
  
    def new
      @project = current_user.projects.build
    end
  
    def create
      @project = current_user.projects.build(project_params)
      if @project.save
        redirect_to @project, notice: 'El proyecto se creó correctamente.'
      else
        render :new, error: "Algo salió mal.", status: :unprocessable_entity
      end
    end
  
    def edit
    end
  
    def update
      if @project.update(project_params)
        redirect_to @project, notice: 'El proyecto se actualizó correctamente.'
      else
        render :edit, error: "Algo salió mal.", status: :unprocessable_entity
      end
    end
  
    def destroy      
      if@project.destroy
        redirect_to projects_url, notice: 'El proyecto se eliminó correctamente.'
      else
        render :show, error: "Algo salió mal.", status: :unprocessable_entity
      end
    end
  
    private
  
      def set_project
        @project = current_user.projects.find(params[:id])
      end
  
      def project_params
        params.require(:project).permit(:title)
      end
  end
  