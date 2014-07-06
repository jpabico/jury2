puts "Test users seeded ----------->>>"
User.create(user_name: "akimeister", email: "aki@test.com", password: "123")
User.create(user_name: "donkeykang", email: "kevin@test.com", password: "123")
User.create(user_name: "papajons", email: "jon@test.com", password: "123")
User.create(user_name: "basher", email: "basher@test.com", password: "123")
User.create(user_name: "kingadam", email: "kingadam@test.com", password: "123")

puts "Test cases seeded ----------->>>"
Case.create(title: "The Kid is Not My Son", summary: "Billie Jean is not my lover.... she took my soul and said that I was the one. But...")
CasesUser.create(case_id: 1, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 1, user_id: 2, party: "defendant")

Case.create(title: "You are not a supermodel", summary: "Pabico thinks he's so sexy, but not so much says I.  Like seriously. ")
CasesUser.create(case_id: 2, user_id: 4, party: "plaintiff")
CasesUser.create(case_id: 2, user_id: 3, party: "defendant")

#Create some active cases
Case.create(title: "Active test case 1", summary: "This is a test", status: "active")
CasesUser.create(case_id: 3, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 3, user_id: 2, party: "defendant")

Case.create(title: "Active test case 2", summary: "This is a test", status: "active")
CasesUser.create(case_id: 4, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 4, user_id: 3, party: "defendant")

Case.create(title: "Active test case 3", summary: "This is a test", status: "active")
CasesUser.create(case_id: 5, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 5, user_id: 4, party: "defendant")

Case.create(title: "Active test case 4", summary: "This is a test", status: "active")
CasesUser.create(case_id: 6, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 6, user_id: 5, party: "defendant")

#Create some closed cases
Case.create(title: "Closed test case 1", summary: "This is a test", status: "closed")
CasesUser.create(case_id: 7, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 7, user_id: 2, party: "defendant")

Case.create(title: "Closed test case 2", summary: "This is a test", status: "closed")
CasesUser.create(case_id: 8, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 8, user_id: 3, party: "defendant")

Case.create(title: "Closed test case 3", summary: "This is a test", status: "closed")
CasesUser.create(case_id: 9, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 9, user_id: 4, party: "defendant")

Case.create(title: "Closed test case 4", summary: "This is a test", status: "closed")
CasesUser.create(case_id: 10, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 10, user_id: 5, party: "defendant")


puts "Test evidence seeded ----------->>>"
Evidence.create(argument: "MJ is awesome", video_url: "http://test.com", cases_user_id: 1)
Evidence.create(argument: "MJ is not awesome", video_url: "http://test.com", cases_user_id: 2)

puts "Test comments seeded ----------->>>"
Comment.create(content:"hello", user_id:1,case_id:1)


