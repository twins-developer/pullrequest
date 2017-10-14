module Companies::InterviewHourMastersHelper
  def filled_interview_hour_master?(interview_hour_masters, wday, hour)
    interview_hour_masters.find do |interview_hour_master|
      InterviewHourMaster.wdays[interview_hour_master.wday] == wday &&
      interview_hour_master.hour == hour
    end.free?
  end
end
