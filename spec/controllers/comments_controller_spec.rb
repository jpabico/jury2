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

    context "given a session id" do
      it "renders partial new_comment" do
        expect {
          session[:id] = 123
          post :create, {
            comment: { body: "text" },
            case_id: 1
          }
        }.to render_template(partial: "new_comment",
                            locals: { comment: "test",
                            username: "test" })
      end
    end

    context "given no session id" do
      it "renders status 404" do
        expect {
          session[:id] = nil
          post :create, {
            comment: { body: "text" },
            case_id: 1
          }
        }.to render_template(json: { status: 404 })
      end
    end

end
