class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :admin_user
    def admin_user
     if current_user.admin == false

      redirect_to root_path

      end

    end
end
