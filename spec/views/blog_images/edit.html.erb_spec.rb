require 'rails_helper'

RSpec.describe "blog_images/edit", type: :view do
  before(:each) do
    @blog_image = assign(:blog_image, BlogImage.create!(
      :image => "MyString"
    ))
  end

  it "renders the edit blog_image form" do
    render

    assert_select "form[action=?][method=?]", blog_image_path(@blog_image), "post" do

      assert_select "input#blog_image_image[name=?]", "blog_image[image]"
    end
  end
end
