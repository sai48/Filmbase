class Comment < ActiveRecord::Base
  has_one :theme

  has_attached_file :image, :styles => { :medium => "200x", :thumb => "64x" },    :convert_options => {:thumb => "-gravity center -extent 64x"}
  belongs_to :user
  validates_attachment_content_type :image, :content_type=>/^image\/(gif|png|x\-png|jpeg|jpg|pjpeg)$/
end
