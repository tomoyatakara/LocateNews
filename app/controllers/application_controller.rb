class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
	  case resource
	  when Admin
	    admins_link_path
	  when Admin
	    admin_session_path
	  end
	end

	def after_sign_out_path_for(resource)
      admin_session_path
    end # ログアウト後に遷移するpathを設定

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
	end

    private

	def profile_params
		params.require(:profile).permit(:image)
	end


end
