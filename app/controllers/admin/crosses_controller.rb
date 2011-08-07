class Admin::CrossesController < Admin::BaseController
  active_scaffold do |config|
    config.nested.add_link(:tasks)
    config.nested.add_link(:participations)
    config.columns.exclude :tasks, :participations, :teams
  end
end
