class TasksController < ApplicationController
  before_action :require_login
  
  def index
    @completed_tasks = Task.all.completed
    @uncompleted_tasks = Task.all.uncompleted
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path, notice: 'task successfully created'
    else
      redirect_to tasks_path, alert: 'an error occurred while creating the task'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, notice: 'task successfully destroyed'
  end

  def complete
    @task = Task.find(params[:id])
    @task.done = true

    if @task.save
      redirect_to tasks_path, notice: 'task completed'
    else
      redirect_to tasks_path, alert: 'it was not possible to complete the task'
    end
  end

  private

  def task_params
    params.require(:task).permit(:title)
  end
end
