class AddImageToCinemalists < ActiveRecord::Migration[5.0]
  def change
    add_column :cinemalists, :images, :string
  end
end
