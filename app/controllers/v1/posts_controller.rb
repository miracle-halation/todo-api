class V1::PostsController < ApplicationController
	def index
		@posts = Post.all
		render json: posts 
	end

	def create
	end

	private
	
	def post_params
		params.require(:post).permit(:title, :content, :image, :user_id)
	end
end
