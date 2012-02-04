class TasksController < ApplicationController
  def create
    @sow = Sow.find(params[:sow_id])
    @task = @sow.tasks.create(params[:task])
    redirect_to sow_path(@sow)
  end
end
