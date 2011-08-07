class GuessValidator < ActiveModel::Validator
  def validate guess
    if guess.team && guess.team.guesses.any? && (time = guess.team.guesses.first.created_at) > Time.now - 10.minutes
      time_difference = ((10.minutes - (Time.now - time)) / 60).round
      guess.errors[:base] << I18n.t("activerecord.errors.models.guess.delay", :minutes => time_difference)
    end
  end
end
