json.array!(@blog_images) do |blog_image|
  json.extract! blog_image, :id, :image
  json.url blog_image_url(blog_image, format: :json)
end
