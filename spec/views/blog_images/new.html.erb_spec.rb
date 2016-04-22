require 'rails_helper'

RSpec.describe "blog_images/new", type: :view do
  before(:each) do
    assign(:blog_image, BlogImage.new(
      :image => "MyString"
    ))
  end

  it "renders new blog_image form" do
    render

    assert_select "form[action=?][method=?]", blog_images_path, "post" do

      assert_select "input#blog_image_image[name=?]", "blog_image[image]"
    end
  end
end
