class CreateAddUsersToFilms < ActiveRecord::Migration
  def self.up
    create_table :add_users_to_films do |t|
      t.integer :users_id
      t.integer :film_id

      t.timestamps
    end
  end

  def self.down
    drop_table :add_users_to_films
  end
end
