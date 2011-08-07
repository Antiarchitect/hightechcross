class Team::BaseController < ApplicationController
  before_filter :authenticate_team!
end
