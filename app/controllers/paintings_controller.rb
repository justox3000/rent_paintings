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

  def edit
    @user = current_user
    @painting = Painting.find(params[:id])
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
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to root_path, status: :see_other
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update!(painting_params)
      redirect_to painting_path(@painting)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :artist_name, :year, :price, :photo)
  end
end
