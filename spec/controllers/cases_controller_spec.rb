require 'spec_helper'

describe CasesController do

  before(:each) do
    @case = Case.new
    @case.title = "title"
    @case.summary = "summary"
    @case.status = "active"
    @case.winner = "bob"
    @case.save

    @user = User.new
    @user.user_name = "bob"
    @user.email = "bob@bob.com"
    @user.password_hash = "test"
  end

  describe 'GET #show' do
    it "renders the :show case view" do
      get :show, id: @case
      expect(response).to render_template :show
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "creates a new case" do
        expect{
          @case = Case.new
          @case.title = "title"
          @case.summary = "summary"
          @case.status = "active"
          @case.winner = "bob"
          @case.save
        }.to change(Case, :count).by(1)
      end
    end
  end

end
