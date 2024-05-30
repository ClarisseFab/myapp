class ApplicationController < ActionController::Base
  include Internationalization

  def after_sign_in_path_for(_resource)
    equipes_path(current_user)
  end
end
