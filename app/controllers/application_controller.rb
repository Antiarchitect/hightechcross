class ApplicationController < ActionController::Base
  protect_from_forgery

  ActiveScaffold.set_defaults do |config|
    #config.search.live = true
    config.ignore_columns = [:created_at, :updated_at, :lock_version]
    config.list.per_page = 20
    config.subform.layout = :vertical
  end
end
