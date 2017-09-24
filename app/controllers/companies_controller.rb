#
# スタートアップ管理
#
class CompaniesController < ApplicationController
  #
  # Callbacks
  #
  before_action :authenticate_company!

  # GET    /companies/my_page
  def my_page
  end
end
