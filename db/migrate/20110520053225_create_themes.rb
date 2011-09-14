class CreateThemes < ActiveRecord::Migration
  def self.up
    create_table :themes do |t|
      t.string :name
      t.integer :film_id

      t.timestamps
    end
  end

  def self.down
    drop_table :themes
  end
end
