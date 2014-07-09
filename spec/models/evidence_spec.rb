require 'spec_helper'

describe Evidence do
    my_evidence = FactoryGirl.create(:evidence)

  it "has a valid factory" do
    expect(my_evidence).to be_valid
  end

  it "is invalid without an argument" do
    expect(Evidence.new(argument: nil)).to have(1).errors_on(:argument)
  end



end
