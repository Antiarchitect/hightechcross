require 'spec_helper'

describe Team do
  let(:valid_attrs) { { :name => "Some Team Name 8762134" } }

  it "should create instance with valid attributes given" do
    Team.create!(valid_attrs)
  end

  it "should require a name" do
    team = Team.new(valid_attrs.merge(:name => ""))
    team.should_not be_valid
  end

  it "should reject instance with name taken" do
    name = "somename"
    Team.create!(valid_attrs.merge(:name => name))
    team = Team.new(valid_attrs.merge(:name => name))
    team.should_not be_valid
  end
end
