class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :album, index: true

      t.timestamps
    end
  end
  def self.up
    add_attachment :photos, :avatar
  end
  def self.down
    remove_attachment :photos, :avatar
  end
end
