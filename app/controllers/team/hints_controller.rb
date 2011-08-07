class Team::HintsController < Team::BaseController
  def show
    @task = Task.find(params[:task])

    if (taken_hint = current_team.taken_hints.find_or_create_by_task_id_and_hint_number(@task, params[:id].to_i)).valid?
      @hint = case taken_hint.hint_number
                when 1
                  @task.first_hint
                when 2
                  @task.second_hint
                when 3
                  @task.third_hint
              end
    else
      redirect_to team_dashboard_index_url, :notice => taken_hint.errors.map { |key, value| "#{TakenHint.human_attribute_name(key)}: #{value}" }.join(', ')
    end
  end
end
