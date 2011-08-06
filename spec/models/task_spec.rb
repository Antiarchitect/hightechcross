require 'spec_helper'

describe Task do
  let(:valid_attrs) { { :cross => Factory.create(:cross),
                        :content => "Some\ntask\ncontent.",
                        :answer => "Correct Answer.",
                        :first_hint => "a",
                        :second_hint => "b",
                        :third_hint => "c" } }

  it "should create instance with valid attributes given" do
    Task.create!(valid_attrs)
  end

  it "should require a cross" do
    task = Task.new(valid_attrs.merge(:cross => nil))
    task.should_not be_valid
  end

  it "should require some content" do
    task = Task.new(valid_attrs.merge(:content => ""))
    task.should_not be_valid
  end

  it "should require correct answer" do
    task = Task.new(valid_attrs.merge(:answer => ""))
    task.should_not be_valid
  end

  it "should require first hint" do
    task = Task.new(valid_attrs.merge(:first_hint => ""))
    task.should_not be_valid
  end

  it "should require second hint" do
    task = Task.new(valid_attrs.merge(:second_hint => ""))
    task.should_not be_valid
  end

  it "should require third hint" do
    task = Task.new(valid_attrs.merge(:third_hint => ""))
    task.should_not be_valid
  end
end
