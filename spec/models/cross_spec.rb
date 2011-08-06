require 'spec_helper'

describe Cross do
  let(:valid_attrs) { { :name => "Some cross name",
                        :active => true,
                        :start =>  Time.now } }

  it "should create instance with valid attributes given" do
    Cross.create!(valid_attrs)
  end

  it "should require some name" do
    task = Cross.new(valid_attrs.merge(:name => ""))
    task.should_not be_valid
  end

  it "should require active flag" do
    task = Cross.new(valid_attrs.merge(:active=> nil))
    task.should_not be_valid
  end

  it "should require start time" do
    task = Cross.new(valid_attrs.merge(:start => nil))
    task.should_not be_valid
  end
end
