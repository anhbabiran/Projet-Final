class CreateUserAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :user_admins do |t|
      t.string :name
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
  end
end
