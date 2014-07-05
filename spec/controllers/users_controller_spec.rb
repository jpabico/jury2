require 'spec_helper'

describe UsersController do

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new user in the database" do
        expect{
          post :create, user: FactoryGirl.attributes_for(:user)
        }.to change(User, :count).by(1)
      end
      it "redirects to the home page" do
        post :create, user: FactoryGirl.attributes_for(:user)
        expect(response).to redirect_to test_url
      end
    end
  end
end












  # context "#create" do
  #   it "Should create a new instance given proper attributes" do
  #     User.create({user_name: "bob", email: "bob@bob.com", password_hash: "bob"})
  #     expect(response).
  #   end
  # end

  # context "#create" do
  #   it "Should redirect after making a new user" do

# end





# describe UsersController do
#   context "signed in as admin user" do
#     let(:user) { create(:user, :admin => true) }
#     before do
#       sign_in_as user
#       get :index
#     end
#     it { should respond_with(:success) }
#   end
#   context "signed in as non-admin user" do
#     let(:role) { create(:role) }
#     let(:user) { role.user }
#     let(:chapter) { role.chapter }
#     before do
#       sign_in_as user
#       get :index
#     end
#     it { should redirect_to(chapter_users_path(chapter)) }
#   end
#   context "signed out" do
#     before do
#       sign_out
#       get :index
#     end
#     it { should redirect_to(root_url) }
#   end
# end
