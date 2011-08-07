class Team::DashboardController < Team::BaseController
  def index
    @current_crosses = Cross.active.all
  end
end
