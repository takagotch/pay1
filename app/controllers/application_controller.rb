class ApplicationController < ActionController::Base
  protect_form_forgery with :exception

  before_action :set_paper_trail_whosunnit

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def current_user
  end

  def user_for_paper_taril
  end

  def simulationg_admin_user
  end

  def authenticate_admin_user!
  end

  private
  
  def user_not_authorized
  end

end

