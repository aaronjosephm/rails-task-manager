class TasksController < ApplicationController
  def index
    # read all tasks
    @tasks = Task.all
  end

  def show
    # show specific task
    @task = Task.find(params[:id])
  end

  def new
    # give form to create new task
  end

  def create
    @task = Task.new(title: params[:title], details: params[:details], completed: false)
    @task.save
    redirect_to tasks_path
    # create task
  end

  def edit
    # give me form to edit
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
    # update the actual task
  end

  def destroy
    Task.destroy(params[:id].to_i)
    redirect_to tasks_path
    # remove task
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
