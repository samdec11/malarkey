class AddDefaultBackImage < ActiveRecord::Migration
  def change
    change_column :cards, :back_image, :string, :default => 'cardback1.jpg'
  end
end
