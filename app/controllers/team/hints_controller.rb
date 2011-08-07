class Team::HintsController < Team::BaseController
  def show
    task = Task.find(params[:task])
    taken_hint = current_team.taken_hints.new(:task => task, :hint_number => params[:hint_number])
    if taken_hint.save
      @hint = case taken_hint.hint_number
                when 1
                  taken_hint.task.first_hint
                when 2
                  taken_hint.task.second_hint
                when 3
                  taken_hint.task.third_hint
              end
    else
      redirect_to team_dashboard_index_url, :notice => 'notices.taken_hints.invalid_hint_number'
    end
  end
end
