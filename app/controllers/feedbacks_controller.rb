require 'net/http'
require 'uri'

class FeedbacksController < ApplicationController
  before_action :set_feedback, only: [:show, :reply]

  def show
    @replies = @feedback.replies
    @reply = Reply.new
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    @feedback.status = 'Open'
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

  def reply
    @reply = @feedback.replies.build(reply_params)
    @reply.user = current_user
    if @reply.save
      redirect_to feedback_path(@feedback), notice: 'Replied!'
    else
      render :show, alert: 'Failed to reply'
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:comment, :id)
  end

  def set_feedback
    @feedback = Feedback.find(params[:id])
  end

end
