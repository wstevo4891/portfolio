# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BlogPost.create!(
  title: 'PDF Uploads with Dropbox API in Rails',
  date: 'April, 21, 2016',
  body: 'Say you want to upload a PDF of an application form when a user completes it.'
)

BlogPost.create!(
  title: 'A Fully Ajaxified Form in Rails',
  date: 'April 21, 2016',
  body: 'AJAX can be tricky when you\'re working with tables.'
)

BlogPost.create!(
  title: 'Dynamic Content Loading in Rails',
  date: 'April 21, 2016',
  body: 'Sometimes a good ruby algorithm can save us the trouble of continually updating a site\'s content.'
)




