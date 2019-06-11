class Project < ActiveRecord::Base
  def self.attributes
    attribute_names.map(&:to_sym)
  end
end
