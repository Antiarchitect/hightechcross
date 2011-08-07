class Admin::ParticipationsController < ApplicationController
  active_scaffold do |config|
    config.columns[:team].form_ui = :select
  end
end
