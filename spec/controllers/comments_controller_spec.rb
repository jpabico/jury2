require 'spec_helper'

describe CommentsController do

  describe 'POST #create' do
    context 'given valid attributes' do
      it 'saves the new comment in the database' do
        User.create
        session[:id] = 1
        post :create, {
          case_id: 1,
          comment: { body: "rabble rabble rabble" }
        }
        comment = Comment.last
        expect(comment.user_id).to eq(1)
        expect(comment.case_id).to eq(1)
        expect(comment.body).to eq("rabble rabble rabble")
      end
    end
  end

end
