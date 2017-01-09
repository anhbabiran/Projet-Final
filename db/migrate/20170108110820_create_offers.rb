class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :prix
      t.string :time
      t.text :detail

      t.timestamps
    end
  end
end
