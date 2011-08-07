class Admin::TeamsController < Admin::BaseController
  active_scaffold do |config|
    config.columns = [:name, :email, :password, :password_confirmation]
    config.list.columns = config.show.columns = [:name, :email]
  end
end
