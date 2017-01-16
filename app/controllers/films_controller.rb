class FilmsController < ApplicationController
  def index

    keyword = params[:q]

    @films = Film.search(keyword)

    respond_to do |format|
      format.html
      format.pdf do
        pdf = FilmPdf.new(@films)
        send_data pdf.render, filename: "films.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end

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
        params.require(:film).permit(:name,:description,:director,:country,:image,:duree,:star)
    end


end
