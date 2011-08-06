require 'spec_helper'

describe Participation do
  let(:valid_attrs) { { :cross => Factory.create(:cross),
                        :team => Factory.create(:team) } }
  let(:cross) { Factory.create(:cross) }
  let(:team) { Factory.create(:team) }

  it "should create instance with valid attributes given" do
    Participation.create!(valid_attrs)
  end

  it "should require a cross" do
    participation = Participation.new(valid_attrs.merge(:cross => nil))
    participation.should_not be_valid
  end

  it "should require a team" do
    participation = Participation.new(valid_attrs.merge(:team => nil))
    participation.should_not be_valid
  end

  it "should reject new instance with existing pair of cross and team" do
    Participation.create!(:cross => cross, :team => team)
    participation = Participation.new(:cross => cross, :team => team)
    participation.should_not be_valid
  end
end
