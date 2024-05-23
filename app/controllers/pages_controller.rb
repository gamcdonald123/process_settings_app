class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:registration_holding]
  skip_before_action :check_authorization, only: [:registration_holding]

  def registration_holding
    # Your code for the registration holding page
  end

  def home
  end
end
