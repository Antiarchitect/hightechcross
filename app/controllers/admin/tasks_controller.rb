class Admin::TasksController < Admin::BaseController
  active_scaffold do |config|
    config.columns = [:content, :answer, :first_hint, :second_hint, :third_hint]
  end
end
