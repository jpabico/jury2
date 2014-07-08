puts "Test users seeded ----------->>>"
User.create(user_name: "akimeister", email: "aki@test.com", password: "123")
User.create(user_name: "donkeykang", email: "kevin@test.com", password: "123")
User.create(user_name: "papajons", email: "jon@test.com", password: "123")
User.create(user_name: "basher", email: "basher@test.com", password: "123")
User.create(user_name: "kingadam", email: "kingadam@test.com", password: "123")

puts "MJ/Supermodel test cases seeded as pending ----------->>>"
Case.create(title: "The Kid is Not My Son", summary: "Billie Jean is not my lover.... she took my soul and said that I was the one. But...", status: "active")
CasesUser.create(case_id: 1, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 1, user_id: 2, party: "defendant")
Evidence.create(argument: "MJ is awesome", video_url: "Zi_XLOBDo_Y", cases_user_id: 1)
Evidence.create(argument: "MJ is not awesome", video_url: "sOnqjkJTMaA", cases_user_id: 2)

Case.create(title: "You are not a supermodel", summary: "Pabico thinks he's so sexy, but not so much says I.  Like seriously. ")
CasesUser.create(case_id: 2, user_id: 4, party: "plaintiff")
CasesUser.create(case_id: 2, user_id: 3, party: "defendant")
Evidence.create(argument: "papajons is not a super model", video_url: "http://test.com", cases_user_id: 3)
Evidence.create(argument: "papajons is a super model", video_url: "http://test.com", cases_user_id: 4)


puts "Creating some active cases ----------->>>"
Case.create(title: "Active test case Example 1", summary: "This is a test", status: "active")
CasesUser.create(case_id: 3, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 3, user_id: 2, party: "defendant")
Evidence.create(argument: "This is some great evidence for the plaintiff", video_url: "http://test.com", cases_user_id: 5)
Evidence.create(argument: "This is some great evidence for the defendant", video_url: "http://test.com", cases_user_id: 6)


Case.create(title: "Active test case Example 2", summary: "This is a test", status: "active")
CasesUser.create(case_id: 4, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 4, user_id: 3, party: "defendant")
Evidence.create(argument: "This is some great evidence for the plaintiff", video_url: "http://test.com", cases_user_id: 7)
Evidence.create(argument: "This is some great evidence for the defendant", video_url: "http://test.com", cases_user_id: 8)

Case.create(title: "Active test case Example 3", summary: "This is a test", status: "active")
CasesUser.create(case_id: 5, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 5, user_id: 4, party: "defendant")
Evidence.create(argument: "This is some great evidence for the plaintiff", video_url: "http://test.com", cases_user_id: 9)
Evidence.create(argument: "This is some great evidence for the defendant", video_url: "http://test.com", cases_user_id: 10)

Case.create(title: "Active test case Example 4", summary: "This is a test", status: "active")
CasesUser.create(case_id: 6, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 6, user_id: 5, party: "defendant")
Evidence.create(argument: "This is some great evidence for the plaintiff", video_url: "http://test.com", cases_user_id: 11)
Evidence.create(argument: "This is some great evidence for the defendant", video_url: "http://test.com", cases_user_id: 12)

puts "Creating some closed cases ----------->>>"
Case.create(title: "Closed test case Example 1", summary: "This is a test", status: "closed")
CasesUser.create(case_id: 7, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 7, user_id: 2, party: "defendant")
Evidence.create(argument: "This is some great evidence for the plaintiff", video_url: "http://test.com", cases_user_id: 13)
Evidence.create(argument: "This is some great evidence for the defendant", video_url: "http://test.com", cases_user_id: 14)

Case.create(title: "Closed test case Example 2", summary: "This is a test", status: "closed")
CasesUser.create(case_id: 8, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 8, user_id: 3, party: "defendant")
Evidence.create(argument: "This is some great evidence for the plaintiff", video_url: "http://test.com", cases_user_id: 15)
Evidence.create(argument: "This is some great evidence for the defendant", video_url: "http://test.com", cases_user_id: 16)

Case.create(title: "Closed test case Example 3", summary: "This is a test", status: "closed")
CasesUser.create(case_id: 9, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 9, user_id: 4, party: "defendant")
Evidence.create(argument: "This is some great evidence for the plaintiff", video_url: "http://test.com", cases_user_id: 17)
Evidence.create(argument: "This is some great evidence for the defendant", video_url: "http://test.com", cases_user_id: 18)

Case.create(title: "Closed test case Example 4", summary: "This is a test", status: "closed")
CasesUser.create(case_id: 10, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 10, user_id: 5, party: "defendant")
Evidence.create(argument: "This is some great evidence for the plaintiff", video_url: "http://test.com", cases_user_id: 19)
Evidence.create(argument: "This is some great evidence for the defendant", video_url: "http://test.com", cases_user_id: 20)


puts "Test comments seeded ----------->>>"
Comment.create(content:"hello", user_id:1,case_id:1)


