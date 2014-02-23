class EventQuestionController < ApplicationController
  before_action :set_event_question, only: [:show, :answer]

  # GET /event_question/1
  # GET /event_question/1.json
  def show
  end

  # PATCH /event_question/1/answer
  # PATCH /event_question/1/answer.json
  def answer
    @answer = params[:event_question][:answer]
    respond_to do |format|
      if @answer == @event_question.question.answer
        event_user = EventUser.where(user: current_user, event: @event_question.event).first
        ClearedUserQuestion.create(event_user: event_user, event_question: @event_question)
        format.html { redirect_to @event_question, notice: 'Good answer. Congratulations!!!' }
        format.json { render action: 'answer', status: :correct, location: @event_question }
      else
        format.html { redirect_to @event_question, alert: 'Incorrect answer. Try again.' }
        format.json { render action: 'answer', status: :incorrect, location: @event_question }
      end
    end
  end

  private
    def set_event_question
      @event_question = EventQuestion.find(params[:id])
    end

    def event_question_params
      params.require(:event_question).permit(:answer)
    end
end
