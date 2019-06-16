require 'rails_helper'

RSpec.describe "exhibits/index", type: :view do
  before(:each) do
    assign(:exhibits, [
      Exhibit.create!(
        :title => "Title",
        :description => "MyText",
        :body => "MyText"
      ),
      Exhibit.create!(
        :title => "Title",
        :description => "MyText",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of exhibits" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
