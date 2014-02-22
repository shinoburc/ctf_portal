class EventController < ApplicationController
  before_action :set_event, only: [:show]

  # GET /events/1
  # GET /events/1.json
  def show
  end

  private
    def set_group
      @event = Event.find(params[:id])
    end
end
