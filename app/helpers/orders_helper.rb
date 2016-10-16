module OrdersHelper
  def readable_time_format_string(datetime)
    "#{datetime.strftime('%A')}, #{datetime.strftime('%B')} #{datetime.strftime('%C')}, #{datetime.strftime('%R')}"
  end
end
