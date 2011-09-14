class CreateFilmsUsers < ActiveRecord::Migration
  def self.up
    create_table :films_users,:id=>false do |t|
      t.integer :film_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :films_users
  end
end
