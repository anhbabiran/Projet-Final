class FilmPdf < Prawn::Document
  def initialize(films)
    super()
    @films = Film.all
    film_id
  end

  def film_id
    text "DATABASE THE FILM"
    table film_id_all do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD","FFFFFF"]
      self.header = true
    end
  end

  def film_id_all
    [["ID","Name","Director","Country","Duree","Star","Description"]] +
    @films.map do |film|
      [film.id,film.name,film.director,film.country,film.duree,film.star,film.description]
    end
  end


end
