require 'spec_helper'

describe CommentsController do
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
    context 'given valid attributes' do
      it 'saves the new comment in the database' do
        expect{
          @comment = Comment.new
          @comment.user_id = 1
          @comment.case_id = 1
          @comment.content = "test"
          @comment.save
        }.to change(Comment, :count).by(1)
      end
    end
  end

end
