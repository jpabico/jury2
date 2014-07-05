require 'spec_helper'

describe PagesController do

  describe 'GET #main' do
    it "renders the :main view" do
    get :main
    expect(response).to render_template :main
    end
  end

end
