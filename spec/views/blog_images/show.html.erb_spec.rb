require 'rails_helper'

RSpec.describe "blog_images/show", type: :view do
  before(:each) do
    @blog_image = assign(:blog_image, BlogImage.create!(
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Image/)
  end
end
