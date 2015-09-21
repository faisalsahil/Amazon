class PaintingsController < ApplicationController

	def create

		@painting = Painting.new(params[:painting])
		@painting.save!
		redirect_to paintings_path

	end


	def index
		@paintings = Painting.all
		@uploader = Painting.new.image
  		@uploader.success_action_redirect = new_painting_url
	end

	def new
	  @painting = Painting.new(key: params[:key])
	end

	def destroy
		@painting = Painting.find(params[:id])
		@painting.destroy
		redirect_to paintings_path
	end
end
