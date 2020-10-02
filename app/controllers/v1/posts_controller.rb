class V1::PostsController < ApplicationController
	def index
		posts = Post.all
		render json: posts 
	end

	def create
		post = Post.new(post_params)
		if post.save
			render json: post, status: :created
		else
			render json: post.error, status: :unprocessable_entity
	end

	private
	
	def post_params
		params.require(:post).permit(:title, :content, :image, :user_id)
	end
end
