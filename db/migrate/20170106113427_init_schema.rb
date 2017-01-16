class InitSchema < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :name
      t.text :description
      t.string :director
      t.string :country

      t.string :duree
      t.string :star
    end


  end
end
