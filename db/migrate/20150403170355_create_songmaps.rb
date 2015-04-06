class CreateSongmaps < ActiveRecord::Migration
  def change
    create_table :songmaps do |t|
      t.string :frequencyson
      t.references :user, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :songmaps, :users
  end
end
