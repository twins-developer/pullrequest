#
# スタートアップサイドのエンジニア管理
#
class Companies::EngineersController < ApplicationController
  #
  # Callbacks
  #
  before_action :set_engineer, only: %i(show)
  # GET  /companies/engineers
  def index
    @engineers = Engineer.all
  end

  # GET  /companies/engineers/:1
  def show

  end

  private

  def set_engineer
    @engineer = Engineer.find(params[:id])
  end
end
