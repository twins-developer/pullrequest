#
# トップ系画面の管理
#
class PagesController < ApplicationController

  # GET /
  def index
    if engineer_signed_in?
      @projects = Project.all.page(params[:page])
    else
      @engineers = Engineer.all.page(params[:page])
    end
  end
end
