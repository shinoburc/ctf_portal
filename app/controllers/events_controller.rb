class EventsController < ApplicationController
  before_action :set_event, only: [:show, :join, :unjoin, :ranking]
  before_action :event_in, only: [:show, :join, :unjoin]
  before_action :user_event_in, only: [:show, :unjoin]

  # GET /events/1
  # GET /events/1.json
  def show
    @event_user = EventUser.where(user: current_user, event: @event).first

    all_cleared_event_questions = ClearedUserQuestion.select('event_question_id').where(event: @event)
    print "#####################"
    print all_cleared_event_questions
    @all_cleared_event_questions = EventQuestion.where(["id in (?)", all_cleared_event_questions])
  end

  # GET /events/1/join
  # GET /events/1/join.json
  def join
    EventUser.create(user: current_user, event: @event)
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  # GET /events/1/unjoin
  # GET /events/1/unjoin.json
  def unjoin
    event_user = EventUser.where(user: current_user, event: @event).first 
    event_user.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  # GET /events/1/ranking
  # GET /events/1/ranking.json
  def ranking
  end
end
