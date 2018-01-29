class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
		if params[:format]
			@user = User.find(params[:format])
		end
	end

	def create
		user = User.find_by(email: params[:event][:care_user_id])
		cattogive = Cat.find_by(name: params[:event][:cat_id])
		event = Event.create(care_user_id: user.id, cat_id: cattogive.id, start: params[:event][:start], end: params[:event][:end], user_id: current_user.id, confirm_one: false, confirm_two: false)
		redirect_to events_path
	end

	def update
		event = Event.find(params[:id])
		if params[:event].keys[0] == "Confirm_request_one"
			event.update(confirm_one: true, price: params[:event][:price])
		elsif params[:event].keys[0] == "Confirm_request_two"
			event.update(confirm_two: true)
		end
		redirect_to events_path
	end

	def destroy
		event = Event.find(params[:id])
		event.destroy
		redirect_to events_path
	end

end