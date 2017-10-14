module Companies::InterviewHoursHelper

  #
  # 指定された日時に面談可能時間が存在するかを返す
  #
  # @param [Array] interview_hours 面談可能時間
  #
  # @param [Date] day 日にち
  #
  # @param [Integer] hour 時間
  #
  # @return [Boolean] 面談可能時間があればtrue、なければfalse
  #
  def filled_interview_hour?(interview_hours, day, hour)
    interview_hours.find do |interview_hour|
      interview_hour.interviewed_on == day &&
      interview_hour.hour == hour
    end.present?
  end

  #
  # 一週間分の日程を取得する
  #
  # @return [Array/Date] 一ヶ月後から一週間の日にち
  #
  def find_one_week
    Time.zone.today..(Time.zone.today + 7.days)
  end
end
