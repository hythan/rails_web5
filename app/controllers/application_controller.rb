class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :authenticate_user!
  load_and_authorize_resource unless: :devise_controller?
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  def set_locale
    session[:locale] = params[:locale] || session[:locale] || I18n.default_locale
    I18n.locale = session[:locale]
  end
end
