class TasksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_project
    before_action :set_task, only: [:show, :edit, :update, :destroy]
  
    def show
    end
  
    def new
      @task = @project.tasks.build
    end
  
    def create
      @task = @project.tasks.build(task_params)
      if @task.save
        redirect_to [@project, @task], notice: 'La tarea se creó correctamente.'
      else
        render :new, error: "Algo salió mal.", status: :unprocessable_entity
      end
    end
  
    def edit
    end
  
    def update
      if @task.update(task_params)
        redirect_to [@project, @task], notice: 'La tarea se actualizó correctamente.'
      else
        render :edit, error: "Algo salió mal.", status: :unprocessable_entity
      end
    end
  
    def destroy
      if @task.destroy
        redirect_to @project, notice: 'La tarea se eliminó correctamente.'
      else
        render :show, error: "Algo salió mal.", status: :unprocessable_entity
      end
    end
  
    private
  
      def set_project
        @project = current_user.projects.find(params[:project_id])
      end
  
      def set_task
        @task = @project.tasks.find(params[:id])
      end
  
      def task_params
        params.require(:task).permit(:title, :completed)
      end
  end
  