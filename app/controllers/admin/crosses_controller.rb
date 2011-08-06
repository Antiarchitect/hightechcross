class Admin::CrossesController < ApplicationController
  active_scaffold do |config|
    config.nested.add_link(:tasks)
    config.columns.exclude :tasks
  end
end
