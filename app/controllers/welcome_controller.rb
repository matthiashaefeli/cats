class WelcomeController < ApplicationController

	def usershow
	end

	def userupdate

		if params[:user][:first_name]
			current_user.update(first_name: params[:user][:first_name])
		elsif
			params[:user][:last_name]
			current_user.update(last_name: params[:user][:last_name])
		elsif 
			params[:user][:street]
			current_user.update(street: params[:user][:street])
		elsif 
			params[:user][:city]
			current_user.update(city: params[:user][:city])
		elsif
			params[:user][:zip_code]
			current_user.update(zip_code: params[:user][:zip_code])
		elsif 
			params[:user][:state]
			current_user.update(state: params[:user][:state])
		elsif 
			params[:user][:tel]
			current_user.update(tel: params[:user][:tel])
		elsif
			params[:user][:mobile]
			current_user.update(mobile: params[:user][:mobile])
		elsif 
			params[:user][:getcat]
			current_user.update(getcat: params[:user][:getcat])


		end
		redirect_to usershow_path
	end

	def getcatyes
		@getcatuser = User.find(params[:id])
	end

	def infouser
		@infouser = User.find(params[:id])
	end


end
