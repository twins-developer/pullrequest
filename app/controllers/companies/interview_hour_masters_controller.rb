#
# 面談時間マスタの管理
#
class Companies::InterviewHourMastersController < ApplicationController
  # GET /companies/interview_hour_masters
  def index
    @interview_hour_masters = current_company.interview_hour_masters
  end
end
