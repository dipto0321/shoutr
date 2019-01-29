class CreatePhotoShouts < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_shouts do |t|
      t.string :image

      t.timestamps
    end
  end
end
