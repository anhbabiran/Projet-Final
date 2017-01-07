class FilmsController < ApplicationController
  def index
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      redirect_to @film
    else
      render 'new'
    end
  end

  def show
    @film = Film.find(params[:id])
  end

  private
    def film_params
        params.require(:film).permit(:name,:description,:director,:country,:image)
    end


end
