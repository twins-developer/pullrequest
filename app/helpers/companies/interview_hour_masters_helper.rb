module Companies::InterviewHourMastersHelper

  #
  # 指定された曜日に面談可能時間マスタが存在するかを返す
  #
  # @param [Array] interview_hours 面談可能時間マスタ
  #
  # @param [Date] day 日にち
  #
  # @param [Integer] hour 時間
  #
  # @return [Boolean] 面談可能時間があればtrue、なければfalse
  #
  def filled_interview_hour_master?(interview_hour_masters, wday, hour)
    interview_hour_masters.find do |interview_hour_master|
      InterviewHourMaster.wdays[interview_hour_master.wday] == wday &&
      interview_hour_master.hour == hour
    end.free?
  end
end
