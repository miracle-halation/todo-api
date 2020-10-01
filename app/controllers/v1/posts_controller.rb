class V1::PostsController < ApplicationController
	def index
	end

	def create
	end

	private
	
	def post_params
		params.require(:post).permit(:title, :content, :user_id)
	end
end
