class Companies::EngineersController < ApplicationController

  # GET  /companies/engineers
  def index
    @engineers = Engineer.all
  end

  # GET  /companies/engineers/:1
  def show
  end
end
