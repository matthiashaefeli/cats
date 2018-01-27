class EventsController < ApplicationController

	def index
	end

	def new
	end

	def create
		user = User.find_by(email: params[:event][:care_user_id])
		cattogive = Cat.find_by(name: params[:event][:cat_id])
		event = Event.create(care_user_id: user.id, cat_id: cattogive.id, start: params[:event][:start], end: params[:event][:end], user_id: current_user.id)
		redirect_to events_path
	end

end