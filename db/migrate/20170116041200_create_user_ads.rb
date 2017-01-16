class CreateUserAds < ActiveRecord::Migration[5.0]
  def change
    create_table :user_ads do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
