class V1::NamesController < ApplicationController
  def index
    @names = Name.all
    render json: @names
  end

  def create
    name = name_params[:name]
    if name && name != ""
      if Name.find_by(name: name)
        render status: :conflict
      else
        @name = Name.new(name: name)
        if @name.save
          render json: @name, status: :created
        else
          render status: :internal_server_error
        end
      end
    else
      render status: :bad_request
    end
  end

  def destroy
    id = params[:id].to_i
    render status: :bad_request if !id
    if @name = Name.find_by(id: id) # using `find_by` because it fails more gracefully than `find`
      if @name.destroy
        render json: @name, status: :accepted
      else
        render status: :internal_server_error
      end
    else
      render status: :not_found
    end
  end

  def update
    id = params[:id].to_i
    render status: :bad_request if !id
    if @name = Name.find_by(id: id)
      if @name.update(name_params)
        render json: @name, status: :success
      else
        render status: :internal_server_error
      end
    else
      render status: :not_found
    end
  end

  private

  def name_params
    params.require(:name).permit(:name)
  end
end
