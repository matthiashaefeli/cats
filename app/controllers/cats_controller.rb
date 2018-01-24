class CatsController < ApplicationController

	def new
	end

	def create
		@cat = Cat.create(user_id: current_user.id, name: params[:cat][:name], breed: params[:cat][:breed], age: params[:cat][:age], comment: params[:cat][:comment])
		redirect_to cats_path
	end
end
