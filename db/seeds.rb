# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

1.upto(10) do |n|
  tags = %w(#yolo #swag #lol #winnin #nomakeup #icebucketchallenge #tbt).sample(2).join(', ')
  puts "Adding post number #{n}"
  Post.create(title: "Cool post #{n}", tag_list: tags, address: "London", picture: File.new(Rails.root.join 'spec/images/old-man1.jpg'))
end