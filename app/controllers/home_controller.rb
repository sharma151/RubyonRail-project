class HomeController < ApplicationController
  def index
    session[:count] ||= 0
  end

  # app/controllers/home_controller.rb
def increment_counter
  session[:count] ||= 0
  session[:count] += 1

  respond_to do |format|
    format.turbo_stream
    format.html { redirect_to root_path }
  end
end


end
