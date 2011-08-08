module ResultsHelper
  def format_time_distance(time)
    # Approach in comment below inconsistent if general time is more than a day
    #(Time.mktime(0) + time).strftime('%H:%M')
    time = time.to_i
    hours = (time / 3600)
    minutes = (time % 3600) / 60
    "#{hours}:#{minutes}"
  end
end
