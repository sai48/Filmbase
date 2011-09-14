class CreateAddModeratorToFilms < ActiveRecord::Migration
  def self.up
    create_table :add_moderator_to_films do |t|
      add_column :films, :user_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :add_moderator_to_films
  end
end
