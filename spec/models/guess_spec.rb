require 'spec_helper'

describe Guess do
  let(:valid_attrs) { { :task => Factory.create(:task),
                        :answer => "some answer in guess" } }
  let(:team) { Factory.create(:team) }

  it "should create instance with valid attributes given" do
    guess = Guess.new(valid_attrs)
    guess.team = team
    guess.save!
  end

  it "should require a task" do
    guess = Guess.new(valid_attrs.merge(:task => nil))
    guess.team = team
    guess.should_not be_valid
  end

  it "should require a team" do
    guess = Guess.new(valid_attrs)
    guess.should_not be_valid
  end

  it "should require some answer" do
    guess = Guess.new(valid_attrs.merge(:answer => ""))
    guess.team = team
    guess.should_not be_valid
  end

  it "should be incorrect with random answer given" do
    guess = Guess.new(valid_attrs)
    guess.team = team
    guess.save!
    guess.correct?.should equal(false)
  end

  it "should be correct with answer matching task correct answer given" do
    guess = Guess.new(valid_attrs.merge(:answer => valid_attrs[:task].answer))
    guess.team = team
    guess.save!
    guess.correct?.should equal(true)
  end
end
