class Team::GuessesController < Team::BaseController
  def create
    @guess = Guess.new(params[:guess])
    @guess.team = current_team
    if @guess.save
      if @guess.correct?

      else

      end
    else
      # Something bad happened
    end
  end
end
