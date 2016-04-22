require 'rails_helper'

RSpec.describe "blog_images/index", type: :view do
  before(:each) do
    assign(:blog_images, [
      BlogImage.create!(
        :image => "Image"
      ),
      BlogImage.create!(
        :image => "Image"
      )
    ])
  end

  it "renders a list of blog_images" do
    render
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
