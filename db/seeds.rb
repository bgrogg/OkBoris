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
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484945423/office_avatars/michaelscott.png",
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
  summary: "I hate the idea that someone out there hates me. I even hate thinking that AL-Qaeda hates me. I think if they got to know me they wouldn't hate me.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484885590/office_avatars/pambeesly.jpg",
  gender: "female",
  orientation: "straight",
  age: "32",
  life: "Receptionist at Dunder Mifflin, Scranton. It's not really my dream job so I'm saving up for art school.",
  skills: "Drawing, making photocopies, keeping it fresh with my white keds.",
  favorites: "Food: Mixed berry yogurt. Movie: Dazed and Confused.",
  thinking: "They have new phone systems now that can ring directly to a salesman. Basically 95% of my job. But I'd like to see a machine that puts out candy for everyone.",
  friday: "Getting my Netflix on.",
  msg_if: "You wanto to talk about my art."
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

user7 = User.create!(
  username: "Dwight.",
  password: "password",
  location: "94105",
  summary: "How would I describe myself? Three words. Hard-working, Alpha male. Jackhammer. Merciless. Insatiable.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484936395/office_avatars/dwightschrute_2.jpg",
  gender: "male",
  orientation: "straight",
  age: "40",
  life: "I am an Assistant Regional Manager at the Dunder Mifflin Scranton branch. Additionally, I am a Lackawanna County volunteer sheriff's deputy, own my own beet farm and am a practitioner of Gōjū-ryū, recently promoted to purple belt. I am also faster than 80% of all snakes.",
  skills: "13-time winner of Salesman of the Month award in 2005 and Salesman of the Year. Also am an expert in martial arts weaponry, paintball, and pre-industrial German.",
  favorites: "Battlestar Galactica. The crow. My desert island book would be the Physician's desk reference...hollowed out. Inside, waterproof matches, iodine tablets, beet seeds, protein bars, NASA blanket, and, in case I get bored, Harry Potter and the Sorcerer's Stone. No, Harry Potter and the Prisoner of Azkaban. Question: did my shoes come off in the plane crash?",
  thinking: "When I die. I want to be frozen. And if they have to freeze me in pieces, so be it. I will wake up stronger than ever, because I will have used that time, to figure out exactly why I died. And what moves I could have used to defend myself better now that I know what hold he had me in.",
  friday: "Getting drunk with my laser tag team.",
  msg_if: "You want to form an alliance. Special weight given to height, German fluency, and remaining child-bearing years."
)

user8 = User.create!(
  username: "ThreeHolePunchJim",
  password: "password",
  location: "95101",
  summary: " My name is Jim Halpert and I am a sales rep, which is a very important job. Um, without me dozens literally dozens of small businesses would go paperless. They would have to write on their hands, or bed sheets, or who knows you know. Total chaos, total chaos. I mean or they could get their paper somewhere else. Staples maybe. I don't know.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484939438/office_avatars/jimhalpert_2.jpg",
  gender: "male",
  orientation: "straight",
  age: "27",
  life: "My job is to speak to clients on the phone about... uh, quantities and type of copier paper. You know, whether we can supply it to them. Whether they can pay for it. And... I'm boring myself just talking about this.",
  skills: "Uh...things I'm good at? Winning Dundies, giving the 'Jim look', and pranking Dwight. One time I got him to knock himself in the head with his phone. That one took a while. I had to put more and more nickels into his handset until he got used to the weight. And then I took them all out.",
  favorites: "Um...can't go without my daily Ham and cheese sandwich. Favorite movie is probably Dazed and Confused.",
  thinking: "One day Michael came in complaining about a speed bump on the highway. I wonder who he ran over then.",
  friday: "Happy hour at Poor Richard's.",
  msg_if: "Message me if you know why it's smells like updog in here."
)

user9 = User.create!(
  username: "OMGOMGOMGOMGOMG",
  password: "password",
  location: "90001",
  summary: "I like ice cream. I need a boyfriend. This year my New Year's Resolution was to get more attention.",
  image_file_name: "http://res.cloudinary.com/dnpcubtwv/image/upload/v1484945216/office_avatars/kellykapoor_1.jpg",
  gender: "female",
  orientation: "straight",
  age: "27",
  life: "Well I manage my department, and I've been doing that for several years now, and God I've learned a lot of life lessons along the way. It's just me in my department, but I am not easy to manage.",
  skills: "I am one of the few people who looks hot eating a cupcake.",
  favorites: "Don't even talk to me about Glee. Ugh, that show! First they say that Mr. Schue doesn't know anything about choreography, and then like three episodes later he's this fantastic choreographer? Pick a lane, people! And what was with Jesse's sudden turn on Rachel between Dream On and Funk? Where the heck did that come from? Honestly that show, it's irresponsible!",
  thinking: "Beyonce, Snow Cones...basically, anything that is awesome.",
  friday: "Freaking out, getting really drunk, and then telling someone I'm pregnant.",
  msg_if: "If you're not going to be mean to me just because I'm the hot popular girl."
)


#seeds responses to questions

#Michael Scott responses

r1 = Response.create(
  choice_id: c25.id,
  user_id: user1.id,
  acceptable_choices: [c25.body, c26.body, c27.body],
  importance: 50,
  explanation: "Need someone who can keep up with me!"
)

r2 = Response.create(
  choice_id: c23.id,
  user_id: user1.id,
  acceptable_choices: [c23.body],
  importance: 50,
  explanation: "Gotta be able to take a joke."
)

r3 = Response.create(
  choice_id: c6.id,
  user_id: user1.id,
  acceptable_choices: [c6.body],
  importance: 50,
  explanation: ""
)

r4 = Response.create(
  choice_id: c8.id,
  user_id: user1.id,
  acceptable_choices: [c8.body, c9.body],
  importance: 1,
  explanation: ""
)

r5 = Response.create(
  choice_id: c2.id,
  user_id: user1.id,
  acceptable_choices: [c1.body, c2.body],
  importance: 10,
  explanation: ""
)


# Ryan Howard responses

r6 = Response.create(
  choice_id: c17.id,
  user_id: user2.id,
  acceptable_choices: [c17.body],
  importance: 50,
  explanation: ""
)

r7 = Response.create(
  choice_id: c8.id,
  user_id: user2.id,
  acceptable_choices: [c8.body],
  importance: 50,
  explanation: ""
)

r8 = Response.create(
  choice_id: c27.id,
  user_id: user2.id,
  acceptable_choices: [c25.body, c26.body, c27.body],
  importance: 50,
  explanation: ""
)


# Pam Beesly responses


r9 = Response.create(
  choice_id: c6.id,
  user_id: user3.id,
  acceptable_choices: [c6.body],
  importance: 50,
  explanation: ""
)

r10 = Response.create(
  choice_id: c20.id,
  user_id: user3.id,
  acceptable_choices: [c20.body],
  importance: 50,
  explanation: ""
)

r11 = Response.create(
  choice_id: c15.id,
  user_id: user3.id,
  acceptable_choices: [c15.body, c14.body],
  importance: 50,
  explanation: ""
)


# Angela Martin responses


r12 = Response.create(
  choice_id: c14.id,
  user_id: user4.id,
  acceptable_choices: [c14.body],
  importance: 50,
  explanation: ""
)

r13 = Response.create(
  choice_id: c19.id,
  user_id: user4.id,
  acceptable_choices: [c19.body],
  importance: 50,
  explanation: "Leviticus 13:1"
)

r14 = Response.create(
  choice_id: c1.id,
  user_id: user4.id,
  acceptable_choices: [c1.body, c2.body],
  importance: 50,
  explanation: ""
)

r15 = Response.create(
  choice_id: c4.id,
  user_id: user4.id,
  acceptable_choices: [c5.body],
  importance: 50,
  explanation: ""
)

r16 = Response.create(
  choice_id: c6.id,
  user_id: user4.id,
  acceptable_choices: [c6.body],
  importance: 50,
  explanation: ""
)

r17 = Response.create(
  choice_id: c12.id,
  user_id: user4.id,
  acceptable_choices: [c11.body, c12.body, c13.body],
  importance: 50,
  explanation: ""
)

# Oscar Martinez responses


r18 = Response.create(
  choice_id: c22.id,
  user_id: user5.id,
  acceptable_choices: [c22.body],
  importance: 50,
  explanation: ""
)

r19 = Response.create(
  choice_id: c9.id,
  user_id: user5.id,
  acceptable_choices: [c9.body],
  importance: 50,
  explanation: ""
)

r20 = Response.create(
  choice_id: c10.id,
  user_id: user5.id,
  acceptable_choices: [c10.body, c11.body],
  importance: 50,
  explanation: ""
)


# Creed Bratton responses


r21 = Response.create(
  choice_id: c6.id,
  user_id: user6.id,
  acceptable_choices: [c6.body],
  importance: 50,
  explanation: ""
)

r22 = Response.create(
  choice_id: c3.id,
  user_id: user6.id,
  acceptable_choices: [c3.body, c2.body],
  importance: 50,
  explanation: ""
)

r23 = Response.create(
  choice_id: c8.id,
  user_id: user6.id,
  acceptable_choices: [c8.body],
  importance: 50,
  explanation: ""
)

# Dwight Schrute responses

r24 = Response.create(
  choice_id: c4.id,
  user_id: user7.id,
  acceptable_choices: [c5.body],
  importance: 50,
  explanation: ""
)

r25 = Response.create(
  choice_id: c6.id,
  user_id: user7.id,
  acceptable_choices: [c6.body],
  importance: 50,
  explanation: ""
)

r26 = Response.create(
  choice_id: c12.id,
  user_id: user7.id,
  acceptable_choices: [c11.body, c12.body, c13.body],
  importance: 50,
  explanation: ""
)

r27 = Response.create(
  choice_id: c14.id,
  user_id: user7.id,
  acceptable_choices: [c14.body],
  importance: 50,
  explanation: ""
)

r28 = Response.create(
  choice_id: c19.id,
  user_id: user7.id,
  acceptable_choices: [c19.body],
  importance: 50,
  explanation: ""
)

r29 = Response.create(
  choice_id: c1.id,
  user_id: user7.id,
  acceptable_choices: [c1.body, c2.body],
  importance: 50,
  explanation: ""
)

#Jim Halpert responses

r30 = Response.create(
  choice_id: c6.id,
  user_id: user8.id,
  acceptable_choices: [c6.body],
  importance: 50,
  explanation: ""
)

r31 = Response.create(
  choice_id: c20.id,
  user_id: user8.id,
  acceptable_choices: [c20.body],
  importance: 50,
  explanation: ""
)

r32 = Response.create(
  choice_id: c15.id,
  user_id: user8.id,
  acceptable_choices: [c15.body, c14.body],
  importance: 50,
  explanation: ""
)


# Kelly Kapoor responses

r33 = Response.create(
  choice_id: c27.id,
  user_id: user9.id,
  acceptable_choices: [c27.body, c26.body],
  importance: 50,
  explanation: ""
)

r34 = Response.create(
  choice_id: c16.id,
  user_id: user9.id,
  acceptable_choices: [c16.body, c15.body],
  importance: 50,
  explanation: ""
)

r35 = Response.create(
  choice_id: c18.id,
  user_id: user9.id,
  acceptable_choices: [c17.body],
  importance: 10,
  explanation: ""
)
