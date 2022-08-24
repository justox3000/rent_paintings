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
    @painting.save
    redirect_to painting_path(@painting)
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :artist_name, :year, :price)
  end
end
