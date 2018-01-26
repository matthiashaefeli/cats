class EventsController < ApplicationController

	def index
	end

	def new
		if request.xhr?

			user = User.find_by(email: params.keys[0])
			cats = []
			user.cats.each do |cat|

				cats.push(cat.name)
			end
				respond_to do |format|
				format.json { render json:cats }
			end

		end
	end

end