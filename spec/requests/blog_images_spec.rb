require 'rails_helper'

RSpec.describe "BlogImages", type: :request do
  describe "GET /blog_images" do
    it "works! (now write some real specs)" do
      get blog_images_path
      expect(response).to have_http_status(200)
    end
  end
end
