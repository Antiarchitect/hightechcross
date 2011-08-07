class Team::DashboardController < Team::BaseController
  def index
    @current_crosses = current_team.crosses.active.all
  end
end
