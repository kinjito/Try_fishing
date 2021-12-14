class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # deviseのコントローラは、ライブラリで用意されているので、直接修正できません。
  このため、deviseのコントローラに修正が必要なときは、application_controllerに記述します。
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
