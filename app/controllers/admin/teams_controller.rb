class Admin::TeamsController < Admin::BaseController
  before_filter :remove_blank_password, :only => :update

  active_scaffold do |config|
    config.columns = [:name, :email, :password, :password_confirmation]
    config.list.columns = config.show.columns = [:name, :email]
  end

  private

  def remove_blank_password
    params[:record].delete(:password) if params[:record][:password].blank?
    params[:record].delete(:password_confirmation) if params[:record][:password_confirmation].blank?
  end
end
