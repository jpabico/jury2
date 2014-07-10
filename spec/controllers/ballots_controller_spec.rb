require 'spec_helper'

describe BallotsController do

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new ballot in the database" do
        User.create
        session[:id] = 1
        post :create, {
          case_id: 1,
          role: "plaintiff"
        }
        ballot = Ballot.last
        expect(ballot.user_id).to eq(1)
        expect(ballot.case_id).to eq(1)
        expect(ballot.role).to eq("plaintiff")
      end
    end

  end
end

