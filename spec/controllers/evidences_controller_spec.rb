require 'spec_helper'

describe EvidencesController do

  describe 'POST #create' do
    context "given a case id is an empty string" do

      it "creates evidence" do
        post :create, {
          case_id: "",
          argument: "argument",
          video_url: "google.com",
          photo_url: "facebook.com",
          case_user_plaintiff: 1
        }

        evidence = Evidence.last
        expect(evidence.argument).to eq("argument")
        expect(evidence.video_url).to eq("google.com")
        expect(evidence.photo_url).to eq("facebook.com")
        expect(evidence.cases_user_id).to eq(1)
      end

      it "redirects to the dashboard_path" do
        post :create, {
          case_id: "",
          argument: "argument",
          video_url: "google.com",
          photo_url: "facebook.com",
          case_user_plaintiff: 1
        }
        expect(response).to redirect_to dashboard_path
      end
    end

    context "given a case id is nil" do

      it "creates evidence" do
        post :create, {
          case_id: nil,
          argument: "argument",
          video_url: "google.com",
          photo_url: "facebook.com",
          case_user_plaintiff: 1
        }

        evidence = Evidence.last
        expect(evidence.argument).to eq("argument")
        expect(evidence.video_url).to eq("google.com")
        expect(evidence.photo_url).to eq("facebook.com")
        expect(evidence.cases_user_id).to eq(1)
      end
    end
  end
end
