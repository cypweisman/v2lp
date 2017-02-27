module ApplicationHelper

  def format_fulldate(date)
    date.strftime("%m/%d/%Y at %I:%M%p")
  end

  def format_dateonly(date)
    date.strftime("%m/%d/%Y")
  end

  def format_timeonly(date)
    date.strftime("%I:%M%p")
  end



end
