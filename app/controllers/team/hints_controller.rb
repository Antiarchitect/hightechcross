class Team::HintsController < Team::BaseController
  def show
    @task = Task.find(params[:task])
    unless @task.solved_by?(current_team)
      unless taken_hint = current_team.taken_hints.find_by_task_id_and_hint_number(@task.id, params[:id].to_i)
        if (taken_hint = current_team.taken_hints.new(:task => @task, :hint_number => params[:id].to_i)).valid?
          taken_hint.save
        else
          redirect_to team_dashboard_index_url, :notice => taken_hint.errors.map { |key, value| "#{TakenHint.human_attribute_name(key)}: #{value}" }.join(', ')
        end
      end
        @hint = case taken_hint.hint_number
                  when 1
                    @task.first_hint
                  when 2
                    @task.second_hint
                  when 3
                    @task.third_hint
                end
    else
      redirect_to team_dashboard_index_url, :notice => I18n.t('notices.team.hints.task_solved')
    end
  end
end
