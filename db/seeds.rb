# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_asset_image(image)
  File.open(Rails.root + "app/assets/images/#{image}")
end

def seed_image_array(arr)
  arr.map { |img| seed_asset_image(img) }
end

def load_yaml(file)
  YAML.load_file(Rails.root.join("db/yaml_data/#{file}.yml"))
end

def create_date(arr)
  Date.new(arr[0], arr[1], arr[2])
end

def seed_aws_image(file)
  if Rails.env.production?
    "https://s3.amazonaws.com/portfolio-of-eric-stephenson/#{file}"
  else
    File.open(Rails.root + "app/assets/images/#{file}")
  end
end

def load_exhibit(file, code)
  return '' if file.nil?

  body = File.open(Rails.root.join(file)).read

  "```#{code}\n #{body}\n ```"
end

# =========================================================
# PROJECTS
# =========================================================

Project.delete_all

puts 'Loading projects ========================='

projects = load_yaml('projects')

projects.each do |project|
  puts "Creating project: #{project['title']}"

  Project.create!(
    title: project['title'],
    slug: project['slug'],
    cover: seed_asset_image(project['cover']),
    images: seed_image_array(project['images']),
    desktop: seed_asset_image(project['desktop']),
    mobile: seed_image_array(project['mobile']),
    meta_title: project['meta_title'],
    meta_description: project['meta_description'],
    summary: project['summary'],
    site_link: project['site_link'],
    repo_link: project['repo_link'],
    description: project['description'],
    features: project['features'],
    apis: project['apis'],
    tech_stack: project['tech_stack']
  )
end

# =========================================================
# POSTS
# =========================================================

Post.delete_all

puts 'Loading posts ============================'

posts = load_yaml('posts')

posts.each do |post|
  puts "Loading post: #{post['title']}"

  new_post = Post.create!(
    meta_title: post['meta_title'],
    meta_description: post['meta_description'],
    title: post['title'],
    slug: post['slug'],
    date: create_date(post['date']),
    cover: seed_asset_image(post['cover']),
    description: post['description']
  )

  post['sections'].each do |section|
    new_post.sections.create!(
      header: section['header'],
      image: section['image'],
      body: section['body']
    )
  end
end

# =========================================================
# EXHIBITS
# =========================================================

Exhibit.delete_all

puts 'Loading exhibits ========================='

exhibits = load_yaml('exhibits')

exhibits.each do |exhibit|
  puts "Creating exhibit: #{exhibit['title']}"

  Exhibit.create!(
    title: exhibit['title'],
    slug: exhibit['slug'],
    code: exhibit['code'],
    description: exhibit['description'],
    body: load_exhibit(exhibit['body'], exhibit['code'])
  )
end
