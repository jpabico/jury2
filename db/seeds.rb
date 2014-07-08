puts "Test users seeded ----------->>>"
User.create(user_name: "akimeister", email: "aki@test.com", password: "123")
User.create(user_name: "donkeykang", email: "kevin@test.com", password: "123")
User.create(user_name: "papajons", email: "jon@test.com", password: "123")
User.create(user_name: "basher", email: "basher@test.com", password: "123")
User.create(user_name: "kingadam", email: "kingadam@test.com", password: "123")

puts "Creating some active cases ----------->>>"
# akimeister v. donkeykang - active case
Case.create(title: "The Kid is Not My Son", summary: "Billie Jean is not my lover.... she took my soul and said that I was the one. But...", status: "active")
CasesUser.create(case_id: 1, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 1, user_id: 2, party: "defendant")
Evidence.create(argument: "Look, there's just no doubt that MJ is truly awesome.  Vote for me!", video_url: "Zi_XLOBDo_Y", cases_user_id: 1)
Evidence.create(argument: "MJ is not awesome.  But he was kinda good in Thriller.  But he is still not awesome", video_url: "4V90AmXnguw", cases_user_id: 2)
Comment.create(content:"Just reminding everyone that MJ is amazing", user_id:1,case_id:1)
Comment.create(content:"No he is not", user_id:2,case_id:1)
Comment.create(content:"Yes he is", user_id:1,case_id:1)
Comment.create(content:"Oh come on guys.  The real question is whether he is black or white", user_id:3,case_id:1)
Comment.create(content:"Point taken.", user_id:5,case_id:1)
Comment.create(content:"We shouldn't be talking about MJ.  Time to open a case for Teenage Mutant Ninja Turtles!", user_id:4,case_id:1)
# basher v. papajons 
Case.create(title: "You are NOT a supermodel", summary: "Pabico thinks he's so sexy, but not so much says I.  Like seriously.", status: "active")
CasesUser.create(case_id: 2, user_id: 4, party: "plaintiff")
CasesUser.create(case_id: 2, user_id: 3, party: "defendant")
Evidence.create(argument: "papajons is not a super model.  He needs to perfect his cat walk!", video_url: "hUcqPQizglE", cases_user_id: 3)
Evidence.create(argument: "papajons is a super model.  His walk is so fierce!", video_url: "AfADZSvC0Hk", cases_user_id: 4)
# kingadam v donkeykang
Case.create(title: "Transformers are better than G.I. Joe", summary: "Transformers are so awesome.  After all, they do have Optimus Prime and Megatron.  So much better than G.I. Joe", status: "active")
CasesUser.create(case_id: 3, user_id: 5, party: "plaintiff")
CasesUser.create(case_id: 3, user_id: 2, party: "defendant")
Evidence.create(argument: "Transformers is an entertainment franchise co-produced between the Japanese Takara Tomy and American Hasbro toy companies. So awesome.", video_url: "P7GeisRaias", cases_user_id: 5)
Evidence.create(argument: "Nothing better than G.I. Joe the movie.  An elite military unit comprised of special operatives known as G.I. Joe, operating out of The Pit, takes on an evil organization led by a notorious arms dealer.", video_url: "ogEtfIdgjpY", cases_user_id: 6)

Case.create(title: "The dude says GIT too much in this Git tutorial video", summary: "Puns are funny but he should use them sparingly.  Like GIT real.  It's GITTING hot in here!", status: "active")
CasesUser.create(case_id: 4, user_id: 3, party: "plaintiff")
CasesUser.create(case_id: 4, user_id: 1, party: "defendant")
Evidence.create(argument: "This is the offending GIT video.  Don't you think he says GIT too much?  GIT it!!!???", video_url: "tRTckrrCME4", cases_user_id: 7)
Evidence.create(argument: "I disagree.  Always good to emphasize GIT.  Just remember to not push to master...  GIT ready!!!", video_url: "o3Z8NU5ImK0", cases_user_id: 8)

Case.create(title: "Pair programming is the best!", summary: "Pair programming is an agile software development technique in which two programmers work together at one workstation. The driver writes code while the navigator talks a lot.  Two programmers switch roles frequently.", status: "active")
CasesUser.create(case_id: 5, user_id: 5, party: "plaintiff")
CasesUser.create(case_id: 5, user_id: 2, party: "defendant")
Evidence.create(argument: "Pair programming is awesome.  Take a look at the best practices.", video_url: "ET3Q6zNK3Io", cases_user_id: 9)
Evidence.create(argument: "Pair programming is so not awesome.  I don't like following best practice.  But you are the best... around!", video_url: "9fWvub_WBho", cases_user_id: 10)

Case.create(title: "J-POP is better than K-POP.  I challenge u.", summary: "J-POP is so much better than K-POP.  What do you think?", status: "active")
CasesUser.create(case_id: 6, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 6, user_id: 2, party: "defendant")
Evidence.create(argument: "Just look at this vid from Hikaru Utada.  How is that not awesome?", video_url: "cfpX8lkaSdk", cases_user_id: 11)
Evidence.create(argument: "I think you are underestimating K-POP.  What about Gangnam-Style???", video_url: "9bZkp7q19f0", cases_user_id: 12)

puts "Creating some closed cases ----------->>>"
Case.create(title: "Dogs are the best companions", summary: "Dogs are the best companions in the world.  Every home needs a dog and every dog needs a home.", status: "closed")
CasesUser.create(case_id: 7, user_id: 5, party: "plaintiff")
CasesUser.create(case_id: 7, user_id: 4, party: "defendant")
Evidence.create(argument: "Dogs are so cute, and they play well with babies.  What's not to love about them?", video_url: "ilMzs1UHEmw", cases_user_id: 13)
Evidence.create(argument: "Nothing against dogs... but cats are so much more chill.", video_url: "Kdgt1ZHkvnM", cases_user_id: 14)

Case.create(title: "Fixed Mindset v. Growth Mindset", summary: "Popular belief is that growth mindset is better, but I disagree!  Fixed mindset is the new thing.", status: "closed")
CasesUser.create(case_id: 8, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 8, user_id: 3, party: "defendant")
Evidence.create(argument: "It's cool to be fixed and arrogant lol.", video_url: "xmaKXiF5g84", cases_user_id: 15)
Evidence.create(argument: "Growth mindset is better fool!", video_url: "pN34FNbOKXc", cases_user_id: 16)

Case.create(title: "TDD is da best.  You should always TDD", summary: "Like, you know about Test Driven Development?  That's like a thing now.", status: "closed")
CasesUser.create(case_id: 9, user_id: 4, party: "plaintiff")
CasesUser.create(case_id: 9, user_id: 5, party: "defendant")
Evidence.create(argument: "There are a 100 reasons for you to love TDD.  Just try it out!", video_url: "QCif_-r8eK4", cases_user_id: 17)
Evidence.create(argument: "I don't like TDD.  I just like creating brittle feature tests.  You shouldn't do dangerous tests like this BTW.", video_url: "AfOW2CKoobE", cases_user_id: 18)

Case.create(title: "Capybara is awesome!!!", summary: "Testing with Capybara is great, but little did you know that Capybara also likes hot baths!", status: "closed")
CasesUser.create(case_id: 10, user_id: 2, party: "plaintiff")
CasesUser.create(case_id: 10, user_id: 4, party: "defendant")
Evidence.create(argument: "Capybaras are soooooooo adorable.  What's not to love about them?", video_url: "2bXJ6PxSlBs", cases_user_id: 19)
Evidence.create(argument: "Capybara looks like a rat.  I don't like rats.", video_url: "0jo_EG7XqZQ", cases_user_id: 20)

puts "Creating pending cases to alert user1 ----------->>>"
Case.create(title: "Spiderman is stronger than Batman!", summary: "Spiderman is so epic.  He has spider skills")
CasesUser.create(case_id: 11, user_id: 2, party: "plaintiff")
CasesUser.create(case_id: 11, user_id: 1, party: "defendant")
Evidence.create(argument: "Look, spider man is a beast.", video_url: "iV4LjkPo5xY", cases_user_id: 21)


