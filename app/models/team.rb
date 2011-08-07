class Team < User
  has_many :participations, :dependent => :destroy
  has_many :crosses, :through => :participations
  has_many :guesses, :dependent => :destroy
  has_many :taken_hints, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true

  default_scope :order => 'created_at ASC'

  # Instance methods
  def update_with_password(params={})
    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if
      params[:password_confirmation].blank?
    end
    update_attributes(params)
  end
end
