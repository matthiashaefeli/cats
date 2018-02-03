class WelcomeController < ApplicationController

	def usershow
	end

	def userupdate
			current_user.update(first_name: params[:user][:first_name],
												 last_name: params[:user][:last_name],
												 street: params[:user][:street],
												 city: params[:user][:city],
												 zip_code: params[:user][:zip_code],
												 state: params[:user][:state],
												 mobile: params[:user][:mobile],
												 getcat: params[:user][:getcat]
												 )

		redirect_to usershow_path
	end

	def getcatyes
		@getcatuser = User.find(params[:id])
	end

	def infouser
		@infouser = User.find(params[:id])
	end


end
