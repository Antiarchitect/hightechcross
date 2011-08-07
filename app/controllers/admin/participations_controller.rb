class Admin::ParticipationsController < Admin::BaseController
  active_scaffold do |config|
    config.columns[:team].form_ui = :select
    config.columns[:team].clear_link
  end
end
