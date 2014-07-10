require 'spec_helper'

describe Case do
  my_case = FactoryGirl.create(:case)

  it "has a valid factory" do
    expect(my_case).to be_valid
  end

  it "is invalid without a title" do
    expect(Case.new(title: nil)).to have(1).errors_on(:title)
  end

 it { should allow_mass_assignment_of(:title) }

 it { should allow_mass_assignment_of(:status) }

 it { should allow_mass_assignment_of(:winner) }

 it { should allow_mass_assignment_of(:active_start) }

 it { should allow_mass_assignment_of(:active_end) }

 it { should have_many(:comments)}

 it { should have_many(:users)}

end
