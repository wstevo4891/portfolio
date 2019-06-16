require 'rails_helper'

RSpec.describe "exhibits/show", type: :view do
  before(:each) do
    @exhibit = assign(:exhibit, Exhibit.create!(
      :title => "Title",
      :description => "MyText",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
