#
# スタートアップ管理
#
class CompaniesController < ApplicationController
  #
  # Callbacks
  #
  before_action :authenticate_company!

  # GET /companies/my_page
  def my_page
    @interview_hours = current_company.interview_hours.find_current_month_hours
    @projects = current_company.projects.page(params[:page])
  end
end
