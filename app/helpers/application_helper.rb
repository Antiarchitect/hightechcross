module ApplicationHelper
  def format_time datetime
    Russian::strftime(datetime, "%H:%M %d %B %Y")
  end
end
