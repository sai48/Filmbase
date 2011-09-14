class CreateAddUserToGroups < ActiveRecord::Migration
  def self.up
    create_table :add_user_to_groups do |t|
      add_column :users, :group_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :add_user_to_groups
  end
end
