class PagesController < ApplicationController
  def index
    @projects = Project.all
    if engineer_signed_in?
    else
      @engineers = Engineer.all.page(params[:page])
      puts @engineers.count
    end
  end
end
