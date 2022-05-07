class ApplicationController < ActionController::Base
  private

  def not_authenticated
    redirect_to login_path, alert: 'Plase login first'
  end
end
