class BlogPost < ActiveRecord::Base
	validate :title, :date, :body, presence: true
	has_many :blog_images
	accepts_nested_attributes_for :blog_images
end
