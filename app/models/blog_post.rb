class BlogPost < ActiveRecord::Base
	validates :title, :date, :body, presence: true
	mount_uploader :cover, ImageUploader
	# mount_uploaders :images, ImageUploader
end
