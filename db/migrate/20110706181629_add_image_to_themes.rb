class AddImageToThemes < ActiveRecord::Migration
  def self.up
    add_column :themes, :image_file_name,    :string
    add_column :themes, :image_content_type, :string
    add_column :themes, :image_file_size,    :integer
    add_column :themes, :image_updated_at,   :datetime
  end

  def self.down
    remove_columns :themes, :image_file_name, :imager_content_type, :image_file_size, :image_updated_at
  end
end
