class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  after_action :store_action



#Redirect after sign in
  def store_action
    return unless request.get?
    if (request.path != "/admins/sign_in" &&
        request.path != "/admins/sign_up" &&
        request.path != "/admins/password/new" &&
        request.path != "/admins/password/edit" &&
        request.path != "/admins/sign_out" &&
        !request.xhr?) # don't store ajax calls
      store_location_for(:admin, "/dashboard")
    end
  end
end
