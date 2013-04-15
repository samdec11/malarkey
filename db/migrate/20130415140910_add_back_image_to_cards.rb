class AddBackImageToCards < ActiveRecord::Migration
  def change
    remove_column :cards, :image
    add_column :cards, :face_image, :string
    add_column :cards, :back_image, :string
  end
end
