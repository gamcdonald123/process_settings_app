require 'net/http'
require 'uri'

class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    if @feedback.save
      redirect_to feedbacks_path, notice: 'Feedback was successfully created.'
    else
      render :new
    end

    # send slack notification
    uri = URI('https://hooks.zapier.com/hooks/catch/9724377/3jt8aec/')
    begin
      Net::HTTP.post_form(uri, first_name: @feedback.user.first_name, last_name: @feedback.user.last_name, id: @feedback.id)
    rescue StandardError => e
      Rails.logger.error "Failed to trigger Zapier webhook: #{e.message}"
    end
  end

  def index
    @feedbacks = Feedback.all
  end

  private

  def feedback_params
    params.require(:feedback).permit(:comment)
  end

end
