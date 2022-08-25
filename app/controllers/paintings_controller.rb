class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @paintings = Painting.all
  end

  def show
    @painting = Painting.find(params[:id])
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.user = current_user
    if @painting.save
      redirect_to painting_path(@painting)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @painting.destroy(painting_params)
    redirect_to_painting_path(@painting)
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :artist_name, :year, :price, :photo)
  end
end
