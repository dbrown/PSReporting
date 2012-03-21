class TasksController < ApplicationController

  def index
    @sow = Sow.find(params[:sow_id])
    @tasks = Task.find(:sow_id => @sow.id)
  end

  def create
    @sow = Sow.find(params[:sow_id])
    @task = @sow.tasks.create(params[:task])
    redirect_to customer_sow_path(params[:customer_id],@sow)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def destroy
    @sow = Sow.find(params[:sow_id])
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to customer_sow_path(params[:customer_id],@sow)
  end

  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to customer_sow_path(@task.sow.customer.id, @task.sow), notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

end
