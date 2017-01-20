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
  username: "datemike",
  password: "password",
  location: "94109",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/q_94/v1484883926/michaelscott_x25fzy.png",
  gender: "male",
  orientation: "straight",
  age: "41",
  life: "Apple elevator fried tomatoes going hardly outside of the ball.",
  skills: "Seven archipelago wonder if Natasha optimize tuscan.",
  favorites: "Senior billy home start up and down the washing machine.",
  thinking: "All of my prunes are water bottle enamel horoscope.",
  friday: "Even if computer bobby tables default knickerboxers.",
  msg_if: "Wait aesthetics believe management clean the cells."
)

user2 = User.create!(
  username: "thefireguy",
  password: "password",
  location: "94534",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/g_face/v1484884778/office_avatars/ryanhoward.jpg",
  gender: "male",
  orientation: "straight",
  age: "27",
  life: "Apple elevator fried tomatoes going hardly outside of the ball.",
  skills: "Seven archipelago wonder if Natasha optimize tuscan.",
  favorites: "Senior billy home start up and down the washing machine.",
  thinking: "All of my prunes are water bottle enamel horoscope.",
  friday: "Even if computer bobby tables default knickerboxers.",
  msg_if: "Wait aesthetics believe management clean the cells."
)

user3 = User.create!(
  username: "dundermifflinthisispam",
  password: "password",
  location: "94105",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484885590/office_avatars/pambeesly.jpg",
  gender: "female",
  orientation: "straight",
  age: "32",
  life: "Apple elevator fried tomatoes going hardly outside of the ball.",
  skills: "Seven archipelago wonder if Natasha optimize tuscan.",
  favorites: "Senior billy home start up and down the washing machine.",
  thinking: "All of my prunes are water bottle enamel horoscope.",
  friday: "Even if computer bobby tables default knickerboxers.",
  msg_if: "Wait aesthetics believe management clean the cells."
)

user4 = User.create!(
  username: "catlover44",
  password: "password",
  location: "94105",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484885878/office_avatars/angelamartin.jpg",
  gender: "female",
  orientation: "straight",
  age: "35",
  life: "Apple elevator fried tomatoes going hardly outside of the ball.",
  skills: "Seven archipelago wonder if Natasha optimize tuscan.",
  favorites: "Senior billy home start up and down the washing machine.",
  thinking: "All of my prunes are water bottle enamel horoscope.",
  friday: "Even if computer bobby tables default knickerboxers.",
  msg_if: "Wait aesthetics believe management clean the cells."
)

user5 = User.create!(
  username: "Actually",
  password: "password",
  location: "95838",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484886311/office_avatars/oscarmartinez.jpg",
  gender: "male",
  orientation: "gay",
  age: "48",
  life: "Apple elevator fried tomatoes going hardly outside of the ball.",
  skills: "Seven archipelago wonder if Natasha optimize tuscan.",
  favorites: "Senior billy home start up and down the washing machine.",
  thinking: "All of my prunes are water bottle enamel horoscope.",
  friday: "Even if computer bobby tables default knickerboxers.",
  msg_if: "Wait aesthetics believe management clean the cells."
)

user6 = User.create!(
  username: "CreedThoughts",
  password: "password",
  location: "94105",
  summary: "Lorem ipsum dolor sit amet, nibh vitae sit augue justo
           dignissim, ut fames, tortor nulla in sem sapien felis. Nibh
           magna dictum eros, ante et integer nulla, id egestas, metus
           velit, eu tincidunt orci velit pulvinar sapien.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484886468/office_avatars/creedbratton.jpg",
  gender: "male",
  orientation: "bisexual",
  age: "63",
  life: "Apple elevator fried tomatoes going hardly outside of the ball.",
  skills: "Seven archipelago wonder if Natasha optimize tuscan.",
  favorites: "Senior billy home start up and down the washing machine.",
  thinking: "All of my prunes are water bottle enamel horoscope.",
  friday: "Even if computer bobby tables default knickerboxers.",
  msg_if: "Wait aesthetics believe management clean the cells."
)

r1 = Response.create(
  choice_id: 2,
  user_id: 1,
  acceptable_choices: c2.body,
  importance: 50,
  explanation: "Testing"
)
