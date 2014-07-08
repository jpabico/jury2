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
    @comment.content = "test"
    @comment.save
  end

  describe 'POST #create' do
    context 'given valid attributes' do
      it 'saves the vote to the databse' do
        expect{
          @vote = Vote.new
          @vote.comment_id = 1
          @vote.user_id = 1
          @vote.direction = 'up'
          @vote.save
        }.to change(Vote, :count).by(1)
      end
    end
  end

end
