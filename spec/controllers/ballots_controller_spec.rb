require 'spec_helper'

describe BallotsController do
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
    context "with valid attributes" do
      it "saves the new ballot in the database" do
      request.env['HTTP_REFERER'] = '/cases/1'
        expect{
          @ballot = Ballot.new
          @ballot.user_id = 1
          @ballot.case_id = 1
          @ballot.role = "defendant"
          @ballot.save
        }.to change(Ballot, :count).by(1)
      end
    end
  end
end

