#
# エンジニア視点のスタートアップ管理
#
class Engineers::CompaniesController < ApplicationController
  # GET  /engineers/companies/:1
  def show
    @company = Engineer.find(params[:id])
  end
end
