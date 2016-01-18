module ApplicationHelper

  def nice_time(time)
    time.strftime("%a %d %B %H:%M")
  end

end
