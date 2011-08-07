class Admin::TeamsController < ApplicationController
  active_scaffold do |config|
    config.nested.add_link(:participants)
    config.columns = [:name]
  end
end
