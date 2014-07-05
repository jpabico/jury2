require 'spec_helper'

describe Case do
  my_case = FactoryGirl.create(:case)

  it "has a valid factory" do
    expect(my_case).to be_valid
  end

  it "sets user vote counts to zero when case is initiated" do
    expect(my_case.user_1_vote_count).to eq 0
    expect(my_case.user_2_vote_count).to eq 0
  end

  it "is invalid without a title" do
    expect(Case.new(title: nil)).to have(1).errors_on(:title)
  end

  it "is invalid without a status" do
    expect(Case.new(status: nil)).to have(1).errors_on(:status)
  end


end
