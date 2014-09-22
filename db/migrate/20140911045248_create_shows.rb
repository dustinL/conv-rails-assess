class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.date :date
      t.string :location
      t.integer :artist_id
      t.timestamps
    end
  end
end
