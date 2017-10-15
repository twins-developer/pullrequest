#
# エンジニア管理
#
class EngineersController < ApplicationController
  #
  # Callbacks
  #
  before_action :authenticate_engineer!

  # GET /engineers/my_page
  def my_page
    @applies = current_engineer.applies.page(params[:page])
    @scouts = current_engineer.scouts.page(params[:page])
  end
end
