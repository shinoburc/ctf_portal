class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_in
      if !@event
        set_event
      end
      if !ApplicationController.helpers.event_in?(@event)
        redirect_to root_path
      end
    end

    def user_event_in
      if !@event
        set_event
      end
      if !ApplicationController.helpers.user_event_in?(@event, current_user)
        redirect_to root_path
      end
    end

    def event_is_ready
      if !@event
        set_event
      end
      if !ApplicationController.helpers.event_is_ready?(@event, current_user)
        redirect_to root_path
      end
    end
end
