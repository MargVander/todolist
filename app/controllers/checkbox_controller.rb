class CheckboxController < ApplicationController
  def create
    @tasks = Task.find(params[:task_id])
  end
end
