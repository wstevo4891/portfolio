require 'rails_helper'

RSpec.describe "exhibits/new", type: :view do
  before(:each) do
    assign(:exhibit, Exhibit.new(
      :title => "MyString",
      :description => "MyText",
      :body => "MyText"
    ))
  end

  it "renders new exhibit form" do
    render

    assert_select "form[action=?][method=?]", exhibits_path, "post" do

      assert_select "input#exhibit_title[name=?]", "exhibit[title]"

      assert_select "textarea#exhibit_description[name=?]", "exhibit[description]"

      assert_select "textarea#exhibit_body[name=?]", "exhibit[body]"
    end
  end
end
