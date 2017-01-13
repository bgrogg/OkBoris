# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

#seed users

user1 = User.create!(
  username: "borisgrogg",
  email: "fakeemail@example.com",
  password: "password",
  location: "Nob Hill",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  looking_for: "full-time",
  languages: "Ruby, Javascript",
  profile_pic_id: 1,
  image_file_name: "placeholder.png",
  frameworks: "Rails, React",
  position: "jobseeker"
)
