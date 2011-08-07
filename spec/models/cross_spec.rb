require 'spec_helper'

describe Cross do
  let(:valid_attrs) { { :name => Factory.next(:somestring),
                        :active => true,
                        :start =>  Time.now } }

  it "should create instance with valid attributes given" do
    Cross.create!(valid_attrs)
  end

  it "should require some name" do
    cross = Cross.new(valid_attrs.merge(:name => ""))
    cross.should_not be_valid
  end

  it "should require active flag" do
    cross = Cross.new(valid_attrs.merge(:active => nil))
    cross.should_not be_valid
  end

  it "should let active flag value be true and false" do
    active_cross = Cross.new(valid_attrs.merge(:active => true))
    inactive_cross = Cross.new(valid_attrs.merge(:active => false))
    active_cross.should be_valid
    inactive_cross.should be_valid
  end

  it "should require start time" do
    cross = Cross.new(valid_attrs.merge(:start => nil))
    cross.should_not be_valid
  end

  it "should reject instance with name taken" do
    name = "somename"
    Cross.create!(valid_attrs.merge(:name => name))
    cross = Cross.new(valid_attrs.merge(:name => name))
    cross.should_not be_valid
  end
end
