class ApplicationController < ActionController::Base
  protect_from_forgery

  def get_current_user
    # this app does not have a concept of logged-in users
    nil
  end

  def fluidfeatures_current_user(verbose=false)
    current_user = get_current_user
    if current_user
      # logged in user
      { :id => current_user[:id] }
    else
      # anonymous user
      {}
    end
  end

end
