module ResultsHelper
  def format_time_distance(time)
    (Time.mktime(0) + time).strftime('%H:%M')
  end
end
