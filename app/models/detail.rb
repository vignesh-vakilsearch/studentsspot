class Detail < ActiveRecord::Base
 has_attached_file :image, :styles => { :medium => "10x20>", :thumb => "10x20>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :image, :attachment_presence => true
validates_with AttachmentPresenceValidator, :attributes => :image
validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 1.megabytes

validates_attachment :image, :presence => true,
:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
 
end
