class TodosController < ApplicationController
  # before_action :find_todo, except: %i[create index]

  # GET /todos
  def index
    @todos = Todo.order("created_at DESC")
    render json: @todos, status: :ok
  end

  # GET /todos/:id
  def show
    @todo = Todo.find_by_id!(params[:_id])
    render json: @todo , status: :ok
  end

  # POST /todos
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render json: @todo, status: :created
    else
      render json: { errors: @todo.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # PUT /todos/:id
  def update
    @todo = Todo.find_by_id!(params[:_id])
    if @todo.update(todo_params)
      render json: @todo, status: :updated
    else
      render json: { errors: @todo.errors.full_messages}, status: :unprocessable_entity
    end
    # head :no_content
  end

   # DELETE /todos/:id
  def destroy
    @todo = Todo.find_by_id!(params[:_id])
    @todo.destroy
    render json: @todo, status: :ok
  end


private

  # def find_todo
  #   @user = Todo.find_by_id!(params[:_id])
  #   rescue ActiveRecord::RecordNotFound
  #     render json: { errors: 'Todo not found' }, status: :not_found
  # end

  def todo_params
    params.permit(:title, :description, :due_date, :status)
  end

end
