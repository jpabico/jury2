# Create all test users
User.create(user_name: "akimeister", email: "aki@test.com", password: "123")
User.create(user_name: "donkeykang", email: "kevin@test.com", password: "123")
User.create(user_name: "jonpabico", email: "jon@test.com", password: "123")
User.create(user_name: "bushyhead", email: "butler@test.com", password: "123")
User.create(user_name: "adam", email: "adam@test.com", password: "123")

# Create test cases
Case.create(title: "The Kid is Not My Son", summary: "Billie Jean is not my lover.... she took my soul and said that I was the one. But...")
CasesUser.create(case_id: 1, user_id: 1, party: "plaintiff")
CasesUser.create(case_id: 1, user_id: 2, party: "defendant")

Case.create(title: "You are not a supermodel", summary: "Pabico thinks he's so sexy, but not so much says I.  Like seriously. ")
CasesUser.create(case_id: 2, user_id: 4, party: "plaintiff")
CasesUser.create(case_id: 2, user_id: 3, party: "defendant")

