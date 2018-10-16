class TopicsController < ApplicationController

	def index
		@topics = Topic.all
	end

	def show
		@topic = Topic.find(params[:id])
	end

	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.new
		@topic.name = params[:topic][:name]
		@topic.description = params[:topic][:description]
		@topic.public = params[:topic][:public]

		if @topic.save
			redirect_to @topic, notice: "This Topic was saved successfully."
		else
			flash.now[:alert] = "There was an error creating this Topic. Please try again."
			render :new
		end
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def update
		@topic = Topic.find(params[:id])

		@topic.name = params[:topic][:name]
		@topic.description = params[:topic][:description]
		@topic.public = params[:topic][:description]

		if @topic.save
			flash[:notice] = "This Topic was updated."
			redirect_to @topic
		else
			flash.now[:alert] = "There was an error saving this update, please try again."
			render :edit
		end
	end
	
end
