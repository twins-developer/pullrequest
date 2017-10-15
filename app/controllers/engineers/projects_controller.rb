#
# エンジニアの応募管理
#
class Engineers::ProjectsController < Engineers::BaseController
  # GET /engineers/projects/:1
  def show
    @project = Project.find(params[:id])
  end
end
