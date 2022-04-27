class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to root_path, notice: 'task successfully created'
    else
      redirect_to root_path, alert: 'an error occurred while creating the task'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to root_path, notice: 'task successfully destroyed'
  end

  private

  def task_params
    params.require(:task).permit(:title)
  end
end
