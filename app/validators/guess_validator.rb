class GuessValidator < ActiveModel::Validator
  def validate guess
    if guess.team && guess.team.guesses.any? && guess.team.guesses.first.created_at > Time.now - 10.minutes
      record.errors[:base] << I18n.t("activerecord.errors.models.guess.delay")
    end
  end
end
