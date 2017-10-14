#
# 面談時間の管理
#
class Companies::InterviewHoursController < ApplicationController
  # GET /companies/interview_hours
  def index
    @interview_hours = current_company.interview_hours.find_current_month_hours
  end

  # POST /companies/interview_hours
  def create
    current_company.create_next_month_hours
  end
end
