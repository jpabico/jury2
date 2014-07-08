require 'spec_helper'

describe PagesController do

  describe 'GET #dashboard' do
    it "renders the :dashboard view" do
      get :dashboard
      expect(response).to render_template :dashboard
    end
  end

end
