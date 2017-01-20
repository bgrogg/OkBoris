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


q1 = Question.create(title: "Do you like cats? Would you consider owning a cat as a pet?")
c1 = Choice.create(question_id: q1.id, body: "Yes, I would love (or do own) a cat.", order: 1)
c2 = Choice.create(question_id: q1.id, body: "I'm not too into them, but I wouldn't mind one.", order: 2)
c3 = Choice.create(question_id: q1.id, body: "No, I dislike cats.", order: 3)


q2 = Question.create(title: "Would you want to be immortal if you could?")
c4 = Choice.create(question_id: q2.id, body: "Yes", order: 1)
c5 = Choice.create(question_id: q2.id, body: "No", order: 2)


q3 = Question.create(title: "Do you believe in ghosts?")
c6 = Choice.create(question_id: q3.id, body: "Yes", order: 1)
c7 = Choice.create(question_id: q3.id, body: "No", order: 2)


q4 = Question.create(title: "Do you like wild parties?")
c8 = Choice.create(question_id: q4.id, body: "Yes", order: 1)
c9 = Choice.create(question_id: q4.id, body: "No", order: 2)


q5 = Question.create(title: "Which best describes your political beliefs?")
c10 = Choice.create(question_id: q5.id, body: "Liberal/Left-wing", order: 1)
c11 = Choice.create(question_id: q5.id, body: "Centrist", order: 2)
c12 = Choice.create(question_id: q5.id, body: "Conservative", order: 3)
c13 = Choice.create(question_id: q5.id, body: "Other", order: 4)


q6 = Question.create(title: "How important is religion/God in your life?")
c14 = Choice.create(question_id: q6.id, body: "Extremely important", order: 1)
c15 = Choice.create(question_id: q6.id, body: "Somewhat important", order: 2)
c16 = Choice.create(question_id: q6.id, body: "Not very important", order: 3)


q7 = Question.create(title: "Which of these best describes you?")
c17 = Choice.create(question_id: q7.id, body: "Carefree", order: 1)
c18 = Choice.create(question_id: q7.id, body: "Intense", order: 2)


q8 = Question.create(title: "Do you think homosexuality is a sin?")
c19 = Choice.create(question_id: q8.id, body: "Yes", order: 1)
c20 = Choice.create(question_id: q8.id, body: "No", order: 2)


q9 = Question.create(title: "If you don't do anything at all for an entire day, how does that make you feel?")
c21 = Choice.create(question_id: q9.id, body: "Good", order: 1)
c22 = Choice.create(question_id: q9.id, body: "Bad", order: 2)


q10 = Question.create(title: "Do you often make jokes that offend more uptight people?")
c23 = Choice.create(question_id: q10.id, body: "Yes", order: 1)
c24 = Choice.create(question_id: q10.id, body: "No", order: 2)


q11 = Question.create(title: "How long do your romantic relationships usually last?")
c25 = Choice.create(question_id: q11.id, body: "0-6 months", order: 1)
c26 = Choice.create(question_id: q11.id, body: "6-12 months", order: 2)
c27 = Choice.create(question_id: q11.id, body: "12+ months", order: 3)
c28 = Choice.create(question_id: q11.id, body: "I've never been in a relationship", order: 4)



#seed users


user1 = User.create!(
  username: "datemike",
  password: "password",
  location: "94109",
  summary: "Hi, I'm datemike. Nice to meet me.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/q_94/v1484883926/michaelscott_x25fzy.png",
  gender: "male",
  orientation: "straight",
  age: "41",
  life: "Regional Manager at Dunder Mifflin, Scranton branch. The way I manage people is that I touch their hearts and souls with humor, with love and maybe a dash of razzle-dazzle.",
  skills: "Ice skating, email forwards, being a great manager. I'm even writing a book on management. If you're really interested, it's called 'Somehow I Manage' and there's going to be a picture of me on the cover, shrugging, with my sleeves rolled up.",
  favorites: "Dane Cook, Bob Hope, pretty much everything Joe Rogan does. My favorite movie is Varsity Blues and currently I'm listening to an audiobook of a novelization of the move Precious based on the book Push by Sapphire.",
  thinking: "Sometimes I'll start a sentence and I don't even know where it's going. I just hope I find it somewhere along the way.",
  friday: "Improv class at Scranton Community College or working on my screenplay, Threatlevel: Midnight.",
  msg_if: "You're looking for someone to split an awesome blossom with at Chili's."
)

user2 = User.create!(
  username: "thefireguy",
  password: "password",
  location: "94534",
  summary: "People keep calling me a 'Wunderkind' ... I don't even know what that means. I mean, I know what it means, it means very successful for your age, so I guess it makes sense, but... it's a weird word.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/g_face/v1484884778/office_avatars/ryanhoward.jpg",
  gender: "male",
  orientation: "straight",
  age: "27",
  life: "MBA grad, former VP of regional sales for Scranton, currently seeking investors for my messaging app, WUPHF.com",
  skills: "I've always found beauty in uncommon places. Homeless people. Graffiti. Photography lets me capture all that.",
  favorites: "Lana Del Rey is one of the best musical exponents of her generation.",
  thinking: "You ever think there's gonna be this massive nuclear holocaust, and after all the major nations are destroyed they'll just be the tribes in the jungle that rise up and survive? The jungle war fare's gonna rule the world?",
  friday: "I go to a lot of parties.",
  msg_if: "Do it or don't. It's whatever."
)

user3 = User.create!(
  username: "dundermifflinthisispam",
  password: "password",
  location: "94105",
  summary: "They have new phone systems now that can ring directly to a salesman. Basically 95% of my job. But I'd like to see a machine that puts out candy for everyone.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484885590/office_avatars/pambeesly.jpg",
  gender: "female",
  orientation: "straight",
  age: "32",
  life: "Receptionist at Dunder Mifflin, Scranton. It's not really my dream job so I'm saving up for art school.",
  skills: "Drawing, making photocopies, keeping it fresh with my white keds.",
  favorites: "Food: Mixed berry yogurt. Movie: Dazed and Confused.",
  thinking: "I hate the idea that someone out there hates me. I even hate thinking that AL-Qaeda hates me. I think if they got to know me they wouldn't hate me.",
  friday: "Getting my Netflix on.",
  msg_if: "If you're gonna be my boyfriend, you have to do boyfriend things."
)

user4 = User.create!(
  username: "catlover44",
  password: "password",
  location: "94105",
  summary: "I actually look forward to performance reviews. I did the youth beauty pageant circuit. And I enjoyed that quite a bit. I really enjoy being judged. I believe I hold up very well to even severe scrutiny.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484885878/office_avatars/angelamartin.jpg",
  gender: "female",
  orientation: "straight",
  age: "35",
  life: "Accountant. President of the Party Planning Committee.",
  skills: "Knitting little costumes for my cats. Planning tasteful and work-appropriate parties.",
  favorites: "The Bible.",
  thinking: "I once reported Oscar to the INS. Turns out he’s clean, but I’m glad I did it.",
  friday: "I do like to have fun. I sing. I dangle things in front of my cats. I do like to have fun. Just NOT at work.",
  msg_if: "You may ask me out to dinner. Nothing fancy or foreign, no bars, no patios, no vegetables, and no seafood."
)

user5 = User.create!(
  username: "Actually",
  password: "password",
  location: "95838",
  summary: "Isn't this site a violation of corporate's policy against workplace dating?",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484886311/office_avatars/oscarmartinez.jpg",
  gender: "male",
  orientation: "gay",
  age: "48",
  life: "Accountant at Dunder Mifflin, Scranton.",
  skills: "Explaining things to Kevin. I'm also a nut for politics and a real film aficionado.",
  favorites: "Whichever book or film we're currently discussing in the Finer Things Club, a lunchtime gathering at work where we discuss the finer things in life.",
  thinking: "Our office has an unusually large number of unusually large people.",
  friday: "Friday night is trivia night!",
  msg_if: "You understand the difference between whomever and whoever."
)

user6 = User.create!(
  username: "CreedThoughts",
  password: "password",
  location: "94105",
  summary: "The only difference between me and a homeless man is this job. I will do whatever it takes to survive. Like I did, when I was a homeless man.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484886468/office_avatars/creedbratton.jpg",
  gender: "male",
  orientation: "bisexual",
  age: "63",
  life: "We should start our own mall.",
  skills: "Just pretend like we're talking until the cops leave.",
  favorites: "When Pam gets Michael's new chair, I get Pam's old chair. Then I'll have two chairs. Only one to go.",
  thinking: "If I can't scuba, then what's this all been about? What am I working toward??!",
  friday: "Anyone wanna hang out by the quarry and throw things down there?",
  msg_if: "Which one is Pam?"
)

#seeds responses to questions

#Michael Scott responses

r1 = Response.create(
  choice_id: 25,
  user_id: 1,
  acceptable_choices: [c25.body, c26.body, c27.body],
  importance: 50,
  explanation: "Need someone who can keep up with me!"
)

r2 = Response.create(
  choice_id: 23,
  user_id: 1,
  acceptable_choices: [c23.body],
  importance: 50,
  explanation: "Gotta be able to take a joke."
)

r3 = Response.create(
  choice_id: 6,
  user_id: 1,
  acceptable_choices: [c6.body],
  importance: 10,
  explanation: ""
)

r4 = Response.create(
  choice_id: 8,
  user_id: 1,
  acceptable_choices: [c8.body, c9.body],
  importance: 1,
  explanation: ""
)

r5 = Response.create(
  choice_id: 2,
  user_id: 1,
  acceptable_choices: [c1.body, c2.body],
  importance: 10,
  explanation: ""
)


# Ryan Howard responses

r4 = Response.create(
  choice_id: 17,
  user_id: 2,
  acceptable_choices: [c17.body],
  importance: 50,
  explanation: ""
)

r5 = Response.create(
  choice_id: 8,
  user_id: 2,
  acceptable_choices: [c8.body],
  importance: 50,
  explanation: ""
)

r6 = Response.create(
  choice_id: 27,
  user_id: 2,
  acceptable_choices: [c25.body, c26.body, c27.body],
  importance: 50,
  explanation: ""
)


# Pam Beesly responses


r4 = Response.create(
  choice_id: 6,
  user_id: 3,
  acceptable_choices: [c6.body],
  importance: 50,
  explanation: ""
)

r5 = Response.create(
  choice_id: 20,
  user_id: 3,
  acceptable_choices: [c20.body],
  importance: 50,
  explanation: ""
)

r6 = Response.create(
  choice_id: 15,
  user_id: 3,
  acceptable_choices: [c15.body, c14.body],
  importance: 50,
  explanation: ""
)


# Angela Martin responses


r4 = Response.create(
  choice_id: 14,
  user_id: 4,
  acceptable_choices: [c14.body],
  importance: 50,
  explanation: ""
)

r5 = Response.create(
  choice_id: 19,
  user_id: 4,
  acceptable_choices: [c19.body],
  importance: 50,
  explanation: "Leviticus 13:1"
)

r6 = Response.create(
  choice_id: 1,
  user_id: 4,
  acceptable_choices: [c1.body, c2.body],
  importance: 50,
  explanation: ""
)


# Oscar Martinez responses


r4 = Response.create(
  choice_id: 22,
  user_id: 5,
  acceptable_choices: [c22.body],
  importance: 50,
  explanation: ""
)

r5 = Response.create(
  choice_id: 9,
  user_id: 5,
  acceptable_choices: [c9.body],
  importance: 50,
  explanation: ""
)

r6 = Response.create(
  choice_id: 10,
  user_id: 5,
  acceptable_choices: [c10.body, c11.body],
  importance: 50,
  explanation: ""
)


# Creed Bratton responses


r4 = Response.create(
  choice_id: 6,
  user_id: 6,
  acceptable_choices: [c6.body],
  importance: 50,
  explanation: ""
)

r5 = Response.create(
  choice_id: 3,
  user_id: 6,
  acceptable_choices: [c3.body, c2.body],
  importance: 50,
  explanation: ""
)

r6 = Response.create(
  choice_id: 8,
  user_id: 6,
  acceptable_choices: [c8.body],
  importance: 50,
  explanation: ""
)
