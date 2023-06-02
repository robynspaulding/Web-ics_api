class CreateComics < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
