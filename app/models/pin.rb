class Pin < ActiveRecord::Base
  attr_accessible :description, :image

	attr_accessor :image_file_name
	attr_accessor :image_content_type
	attr_accessor :image_file_size

  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>" }

end
