class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :num
      t.string :suit
      t.string :image

      t.timestamps
    end
  end
end
