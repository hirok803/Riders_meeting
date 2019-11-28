class AddPictureToTouringRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :touring_routes, :picture, :string
  end
end
