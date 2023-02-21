# frozen_string_literal: true

# Tasks controller
class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # List
  def index
    @tasks = Task.all
  end

  def show; end

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
  def edit; end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  # Destroy
  def destroy
    @task.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
