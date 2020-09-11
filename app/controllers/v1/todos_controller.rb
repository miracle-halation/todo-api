class V1::TodosController < ApplicationController
	def create
		todo = Todo.new(todo_params)
		if todo.save
			render json: todo, status: :created
		else
			render json: todo.errors, status: :unprocessable_entry
		end
	end

	def destroy
		todo = Todo.find(params[:id])
		if todo.destroy
			render json: todo
		end
	end

	
end
