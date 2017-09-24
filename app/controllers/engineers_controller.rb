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
  end
end
