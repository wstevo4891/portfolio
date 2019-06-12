class Post < ActiveRecord::Base
	# validates :title, :date, :body, presence: true
	mount_uploader :cover, ImageUploader
	# mount_uploaders :images, ImageUploader

	has_many :sections

	def self.attributes
    attribute_names.map(&:to_sym)
  end
end
