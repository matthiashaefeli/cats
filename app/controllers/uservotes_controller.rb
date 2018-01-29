class UservotesController < ApplicationController

	def create
		uservote = Uservote.create(event_id: params[:uservotes][:event_id],
															 user_id: params[:uservotes][:user_id], 
															 goodevent: params[:uservotes][:goodevent], 
															 text: params[:uservotes][:text])
		redirect_to events_path

	end

end
