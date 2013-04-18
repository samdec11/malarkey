class RemoveImageColumnsFromCards < ActiveRecord::Migration
  def change
    remove_column :cards, :back_image
    remove_column :cards, :face_image
  end
end
