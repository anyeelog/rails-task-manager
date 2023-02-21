# frozen_string_literal: true

# Tasks controller
class TasksController < ApplicationController
  # List
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  # Create
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  # Update
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  # Destroy
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
