class Team::GuessesController < Team::BaseController
  def create
    @guess = Guess.new(params[:guess])
    @guess.team = current_team
    if @guess.save
      if @guess.correct?
        redirect_to team_dashboard_index_url, :notice => I18n.t('notices.team.guesses.correct_answer')
      else
        redirect_to team_dashboard_index_url, :notice => I18n.t('notices.team.guesses.wrong_answer')
      end
    else
      redirect_to team_dashboard_index_url, :notice => @guess.errors.map { |key, value| "#{Guess.human_attribute_name(key)}: #{value}" }.join(', ')
    end
  end
end
