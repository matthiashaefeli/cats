class MessagesController < ApplicationController

	def index
		@users = User.all
		@messages = Message.where(to_id: current_user.id)
	end

	def new
		if params[:format]
			@user = User.find(params[:format])
		end
	end

	def create
		sent_to_user = User.find_by(email: params[:message][:to_id]).id
		message = Message.create(to_id: sent_to_user, from_id: current_user.id, text: params[:message][:text])
		redirect_to messages_path
	end

	def destroy
		Message.find(params[:id]).destroy
		redirect_to messages_path
	end

end
