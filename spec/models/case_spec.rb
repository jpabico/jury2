require 'spec_helper'

describe Case do
  my_case = FactoryGirl.create(:case)

  it "has a valid factory" do
    expect(my_case).to be_valid
  end


  it "is invalid without a title" do
    expect(Case.new(title: nil)).to have(1).errors_on(:title)
  end



end
