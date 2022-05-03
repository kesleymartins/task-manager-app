class SessionsController < ApplicationController
  def new; end

  def create
    @session_status = login(params[:email], params[:password])
    
    if @session_status
      redirect_to tasks_path, notice: 'You have logged in successfully'
    else
      render :new, alert: 'Login Failed'
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'See you later ;)'
  end
end