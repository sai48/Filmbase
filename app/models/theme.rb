class Theme < ActiveRecord::Base
  has_one :film
  has_many :comments

  has_attached_file :image, :styles => { :medium => "200x", :thumb => "64x" }

  validates_attachment_content_type :image, :content_type=>/^image\/(gif|png|x\-png|jpeg|jpg|pjpeg)$/
end
