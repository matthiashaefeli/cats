class UservotesController < ApplicationController

	def create
		uservote = Uservote.create(event_id: params[:uservotes][:event_id],
															 user_id: params[:uservotes][:user_id], 
															 housestars: params[:uservotes][:housestars], 
															 text: params[:uservotes][:text])
		redirect_to events_path

	end

end
