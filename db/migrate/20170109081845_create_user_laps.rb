class CreateUserLaps < ActiveRecord::Migration[5.0]
  def change
    create_table :user_laps do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
