require 'spec_helper'

feature 'Dashboard Index Page' do
  before :each do
  	# seed a subset of user/case data for dashboard test
  	User.create(user_name: "akimeister", email: "aki@test.com", password: "123")
		User.create(user_name: "donkeykang", email: "kevin@test.com", password: "123")
		User.create(user_name: "papajons", email: "jon@test.com", password: "123")
		User.create(user_name: "basher", email: "basher@test.com", password: "123")
		User.create(user_name: "kingadam", email: "kingadam@test.com", password: "123")

		Case.create(title: "The Kid is Not My Son", summary: "Billie Jean is not my lover.... she took my soul and said that I was the one. But...", status: "active", active_start: Time.now, active_end: Time.now + 15.minutes)
		CasesUser.create(case_id: 1, user_id: 1, party: "plaintiff")
		CasesUser.create(case_id: 1, user_id: 2, party: "defendant")
		Evidence.create(argument: "Look, there's just no doubt that MJ is truly awesome.  Vote for me!", video_url: "Zi_XLOBDo_Y", cases_user_id: 1)
		Evidence.create(argument: "MJ is not awesome.  But he was kinda good in Thriller.  But he is still not awesome", video_url: "4V90AmXnguw", cases_user_id: 2)

		Case.create(title: "Dogs are the best companions", summary: "Dogs are the best companions in the world.  Every home needs a dog and every dog needs a home.", status: "closed")
		CasesUser.create(case_id: 2, user_id: 5, party: "plaintiff")
		CasesUser.create(case_id: 2, user_id: 4, party: "defendant")
		Evidence.create(argument: "Dogs are so cute, and they play well with babies.  What's not to love about them?", video_url: "ilMzs1UHEmw", cases_user_id: 13)
		Evidence.create(argument: "Nothing against dogs... but cats are so much more chill.", video_url: "Kdgt1ZHkvnM", cases_user_id: 14)
  end

  # ================================
  # Basic Display Tests
  # ================================

  scenario 'Displays plaintiff case argument' do
    visit case_path(1)
    expect(page).to have_content "Look, there\'s just no doubt that MJ is truly awesome. Vote for me!"
  end

  scenario 'Displays defendant case argument' do
    visit case_path(1)
    expect(page).to have_content "MJ is not awesome.  But he was kinda good in Thriller."
  end  

  # scenario 'Displays countdown timer' do
  #   visit case_path(1)
  #   expect(@starting_seconds).to eq(@case.active_end - Time.now)
  # end  

end
