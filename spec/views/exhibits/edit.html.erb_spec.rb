require 'rails_helper'

RSpec.describe "exhibits/edit", type: :view do
  before(:each) do
    @exhibit = assign(:exhibit, Exhibit.create!(
      :title => "MyString",
      :description => "MyText",
      :body => "MyText"
    ))
  end

  it "renders the edit exhibit form" do
    render

    assert_select "form[action=?][method=?]", exhibit_path(@exhibit), "post" do

      assert_select "input#exhibit_title[name=?]", "exhibit[title]"

      assert_select "textarea#exhibit_description[name=?]", "exhibit[description]"

      assert_select "textarea#exhibit_body[name=?]", "exhibit[body]"
    end
  end
end
