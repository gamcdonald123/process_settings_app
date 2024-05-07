require 'net/http'
require 'uri'

class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      redirect_to feedbacks_path, notice: 'Feedback was successfully created.'
    else
      render :new
    end

    # send slack notification
    uri = URI('https://hooks.zapier.com/hooks/catch/9724377/3jt8aec/')
    begin
      Net::HTTP.post_form(uri, user: @feedback.user, id: @feedback.id)
    rescue StandardError => e
      Rails.logger.error "Failed to trigger Zapier webhook: #{e.message}"
    end
  end

  def index
    @feedbacks = Feedback.all
  end

  private

  def feedback_params
    params.require(:feedback).permit(:user, :email, :comment)
  end

end
