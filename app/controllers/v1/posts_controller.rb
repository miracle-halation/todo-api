class V1::PostsController < ApplicationController
	def create
		post = Post.new(post_params)
		if post.save
			render json: post, serializer: PostSerializer, status: :created
		else
			render json: post.errors, status: :unprocessable_entity
		end
	end

	private
	
	def post_params
		params.require(:posts).permit(:title, :content, :image, :user_id)
	end
end
