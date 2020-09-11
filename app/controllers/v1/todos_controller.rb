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
		
	end
end
