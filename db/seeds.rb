# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Question.destroy_all
Choice.destroy_all
Response.destroy_all

#seed questions and choices


q1 = Question.create(title: "Is this what a placeholder question looks like?")

c1 = Choice.create(question_id: q1.id, body: "Yes", order: 1)
c2 = Choice.create(question_id: q1.id, body: "No", order: 2)

#seed users

user1 = User.create!(
  username: "borisgrogg",
  email: "fakeemail@example.com",
  password: "password",
  location: "94109",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  looking_for: "full-time",
  languages: "Ruby, Javascript",
  profile_pic_id: 1,
  image_file_name: "default_profile.png",
  frameworks: "Rails, React",
  position: "jobseeker"
)

user2 = User.create!(
  username: "b0risgr0gg",
  email: "doppelganger@gmail.com",
  password: "password",
  location: "94105",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  looking_for: "part-time",
  languages: "Swift, Objective-C",
  profile_pic_id: 2,
  image_file_name: "default_profile.png",
  frameworks: "Foundation, UIKit, CloudKit",
  position: "jobseeker"
)

user3 = User.create!(
  username: "notBoris",
  email: "twins@gmail.com",
  password: "password",
  location: "94105",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  looking_for: "hourly",
  languages: "C++, C#",
  profile_pic_id: 3,
  image_file_name: "default_profile.png",
  frameworks: ".NET, Rails",
  position: "jobseeker"
)

user4 = User.create!(
  username: "bigwig",
  email: "bigwig@gmail.com",
  password: "password",
  location: "94109",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  looking_for: "full-time",
  languages: "Ruby, Javascript",
  profile_pic_id: 4,
  image_file_name: "default_profile.png",
  frameworks: "React, Rails",
  position: "recruiter"
)

user5 = User.create!(
  username: "gorisbrogg",
  email: "notme@gmail.com",
  password: "password",
  location: "94109",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  looking_for: "hourly",
  languages: "Java",
  profile_pic_id: 5,
  image_file_name: "default_profile.png",
  frameworks: "Angular",
  position: "jobseeker"
)

r1 = Response.create(
  choice_id: 2,
  user_id: 1,
  acceptable_choices: c2.body,
  importance: 50,
  explanation: "Testing"
)
