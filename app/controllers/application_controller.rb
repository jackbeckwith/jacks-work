class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
def search
  case params[:type]
    when "title", "genre"
      @songs = Song.where(params[:type] +" LIKE ?", "%"+params[:search]+"%")
      render 'songs/index'
    when "name", "email"
      @users = User.where(params[:type] +" LIKE ?", "%"+params[:search]+"%")
      render 'users/index'
    else 
      render 'home/index'
  end 
end

  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, 
      :hometown, :style, :password, :password_confirmation) }
     devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, 
      :hometown, :style, :password, :password_confirmation, :current_password) }
  end
end
