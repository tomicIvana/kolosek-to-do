class TasksController < ApplicationController
	def index
    @tasks = Task.all
  end

  def create
    @task= Task.new(task_params)
    @task.save
  end

  def finish
  	@task = Task.find(params.require(:id))
    @task.finished!
    render json:{}
  end

private

  def task_params
    params.require(:task).permit(:body, :finished)
  end
end
