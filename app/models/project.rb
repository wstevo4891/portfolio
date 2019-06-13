class Project < ActiveRecord::Base
  mount_uploader :cover, ImageUploader
  mount_uploaders :images, ImageUploader

  def self.attributes
    attribute_names.map(&:to_sym)
  end

  def pretty_print
    h = JSON.parse(to_json)

    JSON.pretty_generate(h)
  end
end
