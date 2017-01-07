class AddImageToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :image, :string
  end
end
