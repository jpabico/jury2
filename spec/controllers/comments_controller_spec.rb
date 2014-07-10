require 'spec_helper'

describe CommentsController do

  describe 'POST #create' do

    context 'given valid attributes' do
      it 'saves the new comment in the database' do
        expect{
          @comment = Comment.create!({
          user_id: 1,
          case_id: 1,
          body: "test"
          })
        }.to change(Comment, :count).by(1)
      end
    end

  end
end
