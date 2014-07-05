require 'spec_helper'

describe Evidence do
    my_evidence = FactoryGirl.create(:evidence)

  it "has a valid factory" do
    expect(my_evidence).to be_valid
  end

  it "is invalid without an argument" do
    expect(Evidence.new(argument: nil)).to have(1).errors_on(:argument)
  end

  it "is invalid without a mediatype" do
    expect(Evidence.new(mediatype: nil)).to have(1).errors_on(:mediatype)
  end

  it "is invalid without a party" do
    expect(Evidence.new(party: nil)).to have(1).errors_on(:party)
  end

  it "is invalid without a user_cases_id" do
    expect(Evidence.new(users_cases_id: nil)).to have(1).errors_on(:users_cases_id)
  end

  it "has a video url argument if the mediatype is video"

end
