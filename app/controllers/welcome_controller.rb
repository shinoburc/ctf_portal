class WelcomeController < ApplicationController
  def index
    @events = Event.where("start_datetime > '" + Time.now.to_s + "' or end_datetime > '" + Time.now.to_s + "'").order('start_datetime asc')
  end
end
