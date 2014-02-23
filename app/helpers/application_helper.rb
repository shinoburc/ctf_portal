module ApplicationHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar", size: '24x24')
  end

  def event_in?(event)
    event.start_datetime < Time.now and event.end_datetime > Time.now
  end

  def user_event_in?(event, user)
    event.event_users.exists? user_id: user
  end

  def event_is_ready?(event, user)
    event_in?(event) and user_event_in?(event, user)
  end

  def event_user_score(event, user)
    @event_user = EventUser.where(user: user, event: event).first
    total = 0
    @event_user.event_questions.each do |event_question|
      total += event_question.point
    end
    total
  end
end
