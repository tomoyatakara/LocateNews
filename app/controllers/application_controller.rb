class ApplicationController < ActionController::Base
private
	def profile_params
		params.require(:profile).permit(:image)
	end
end
