class PagesController < ApplicationController
  before_action :check_role, only: :home

  def registration_holding
    if ((current_user.has_role?(:admin) || current_user.has_role?(:technician)) && current_user.has_role?(:setter))
      redirect_to root_path
    # else
    #   check_role
    end
  end

  def home
  end

  private

  def check_role
    if current_user.present?
      if current_user.has_role?(:admin) || current_user.has_role?(:technician) || current_user.has_role?(:setter)
        redirect_to root_path
      else
        redirect_to registration_holding_path
      end
    else
      redirect_to new_user_session_path
    end
  end
end
