require 'spec_helper'


describe SessionsController do

  describe "POST #create" do
    before(:each) do
      @user = User.new
      @user.user_name = "bob"
      @user.email = "bob@bob.com"
      @user.password_hash = "bob"
      @user.save
    end
    context "with valid user login" do
      # it "sets the session to current user" do
      #     post :create, session: { user_name: @user.user_name, email: @user.email, password_hash: @user.password_hash}
      #     expect(controller.current_user).to eq @user
      # end
      it "redirects the user to the dashboard" do
          post :create, session: { user_name: @user.user_name, email: @user.email, password_hash: @user.password_hash}
          expect(response).to redirect_to root_path
      end
    end
  end

end
