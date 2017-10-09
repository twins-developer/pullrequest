#
# 面談時間の管理
#
class Companies::InterviewHoursController < ApplicationController
  # GET /companies/interview_hours
  def index
    @interview_hours = current_company.interview_hours
  end
end
