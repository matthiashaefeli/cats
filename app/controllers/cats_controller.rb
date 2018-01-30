class CatsController < ApplicationController

	def new
	end

	def create

		@cat = Cat.create(avatar: params[:cat][:image], user_id: current_user.id, name: params[:cat][:name], breed: params[:cat][:breed], age: params[:cat][:age], comment: params[:cat][:comment])
		redirect_to cats_path
	end

	def show
		@cat = Cat.find(params[:id])
	end

	def edit
		@cat = Cat.find(params[:id]) 
	end

	def update
		cat = Cat.find(params[:id])
		cat.update(avatar: params[:cat][:image], name: params[:cat][:name], breed: params[:cat][:breed], age: params[:cat][:age], comment: params[:cat][:comment]) 
		redirect_to cats_path
	end

	def destroy
		cat = Cat.find(params[:id])
		cat.destroy
		redirect_to cats_path
	end


end
