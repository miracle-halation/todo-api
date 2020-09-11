class V1::UsersController < ApplicationController
	def index
		if params[:uid]
			current_user = User.find_by(uid: params[:uid])
			render json: current_user
		else
			users = User.all
			render json: users
		end
	end

	
end
