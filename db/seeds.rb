# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_image(file_name)
  if Rails.env.production?
    "https://s3.amazonaws.com/portfolio-of-eric-stephenson/#{file_name}"
  else
	  File.open(File.join(Rails.root + "app/assets/images/#{file_name}"))
  end
end

BlogPost.create!(
  title: 'PDF Uploads with Dropbox API',
  cover: seed_image("dropbox-api.png"),
  date: 'April 26, 2016',
  body: 'Say you want to upload a PDF of an application form when a user completes it.'
)

BlogPost.create!(
  title: 'A Fully Ajaxified Index Table',
  cover: seed_image("ajax-blue.jpg"),
  date: 'April 28, 2016',
  body: 'AJAX can be tricky when you\'re working with tables.'
)

BlogPost.create!(
  title: 'Live-reloading with Guard LiveReload',
  cover: seed_image("livereload-with-rails-4.jpg"),
  date: 'April 28, 2016',
  body: 'Sometimes a good ruby algorithm can save us the trouble of continually updating a site\'s content.'
)
