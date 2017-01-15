class CreateCinemalists < ActiveRecord::Migration[5.0]
  def change
    create_table :cinemalists do |t|
      t.string :name
      t.string :image
      t.string :address
      t.string :phone
      t.string :web
      t.timestamps
    end
  end
end
