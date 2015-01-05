class TasksController < ApplicationController
  respond_to :html,:js
  
  def index
     @task = Task.first
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(params[:task].permit(:subject,:desc,:starttime,:owner))
     @task.save
      flash[:notice] = "Successfully created task."
     #redirect_to @task
     #render :partial=> "form"
    
  end
  
  def show 
    @task = Task.find(params[:id])
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task].permit(:subject,:desc,:starttime,:owner))
      flash[:notice] = "Successfully updated task."
      #redirect_to @task
    end
  end
  
  def destroy
  @tasks=Task.all
    @task = Task.find(params[:id])
   if @task.destroy
    flash[:notice] = "Successfully destroyed task."
    
   end
  end
end
