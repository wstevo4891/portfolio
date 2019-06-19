class Post < ActiveRecord::Base
	# validates :title, :date, :body, presence: true
	mount_uploader :cover, ImageUploader
	# mount_uploaders :images, ImageUploader

	has_many :sections

	def self.attributes
    attribute_names.map(&:to_sym)
	end
	
	def pretty_print
		h = attributes
		h[:sections] = sections.map(&:attributes)

    JSON.pretty_generate(h)
  end
end
