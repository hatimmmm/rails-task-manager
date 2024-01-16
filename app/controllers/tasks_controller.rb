class TasksController < ApplicationController
  def home
    @tasks = Task.all()
  end

  def create
    title = params[:title]
    details = params[:details]
    @task = Task.create(title: title, details: details)
    @task.save()
    redirect_to "/"
  end

  def deleted
  end

  def show
    @task = Task.find(params[:id])
    # redirect_to :action => "show", :id => @task[:id]
  end

  def delete
    @task = Task.destroy(params[:id])
    redirect_to "/"

  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to "/"

  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
