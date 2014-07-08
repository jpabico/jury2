require 'spec_helper'

describe EvidencesController do
  before(:each) do
    @user = User.new
    @user.user_name = "bob"
    @user.email = "bob@bob.com"
    @user.password_hash = "test"

    @case = Case.new
    @case.title = "title"
    @case.summary = "summary"
    @case.status = "active"
    @case.winner = "bob"
    @case.save
  end

  describe 'POST #create' do
    context "given valid attributes" do
      it "saves the new evidence to the database" do
        expect{
          @evidence = Evidence.new
          @evidence.cases_user_id = 1
          @evidence.argument = "rabble"
          @evidence.photo_url = "test"
          @evidence.video_url = "test"
          @evidence.save
        }.to change(Evidence, :count).by(1)
      end
    end
  end

end
