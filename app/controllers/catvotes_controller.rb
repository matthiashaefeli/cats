class CatvotesController < ApplicationController

	def create
		catvote = Catvote.create(event_id: params[:catvotes][:event_id], user_id: current_user.id, cat_id: params[:catvotes][:cat_id], text: params[:catvotes][:text], goodcat: params[:catvotes][:goodcat])
		redirect_to events_path
	end

end
