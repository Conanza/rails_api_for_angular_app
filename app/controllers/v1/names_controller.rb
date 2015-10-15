class V1::NamesController < ApplicationController
  def index
    @names = Name.all
    render json: @names
  end

  def create
    name = name_params[:name]
    if name
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
    @id = params[:id].to_i
    render status: :bad_request if !@id
    if Name.destroy(@id)
      render json: @id, status: :success
    else
      render status: :internal_server_error
    end
  end

  private

  def name_params
    params.require(:name).permit(:name)
  end
end
