module InterviewHoursHelper
  def filled_hour?(interview_hours, wday, hour)
    interview_hours.find do |interview_hour|
      InterviewHour.wdays[interview_hour.wday] == wday &&
      interview_hour.hour == hour
    end.free?
  end
end
