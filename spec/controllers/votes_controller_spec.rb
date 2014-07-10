require 'spec_helper'

describe VotesController do

  before(:each) do
    @user = User.new
    @user.user_name = "bob"
    @user.email = "bob@bob.com"
    @user.password_hash = "test"

    @comment = Comment.new
    @comment.user_id = 1
    @comment.case_id = 1
    @comment.body = "test"
    @comment.save
  end

  describe 'POST #create' do
    context 'given valid attributes' do
      it 'saves the vote to the databse' do
        post :create, {
          comment_id: 1,
          user_id: 1,
          direction: "up"
        }
        vote = Vote.last
        expect(vote.user_id).to eq(1)
        expect(vote.comment_id).to eq(1)
        expect(vote.direction).to eq("up")
      end
    end
  end

end
