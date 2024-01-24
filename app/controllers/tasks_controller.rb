class TasksController < ApplicationController
  def index
    @tasks = Task.all;
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(pet_params)
    @task.save
    p task_path(@task)
    redirect_to task_path(@task)
  end

  def show
    @task = Task.find(params[:id])
  end

  private

  def pet_params
    params.require(:task).permit(:title, :details)
  end

end
