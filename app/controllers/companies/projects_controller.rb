#
# スタートアップのプロジェクト管理
#
class Companies::ProjectsController < Companies::BaseController
  #
  # Callbacks
  #
  before_action :set_project, only: %i(show edit update destroy)

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
    @tags = Tag.all
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = current_company.projects.new(project_params)
    respond_to do |format|
      if @project.save
        format.html { redirect_to [:companies, @project], notice: t('.success') }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to [:companies, @project], notice: t('.success') }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to companies_projects_url, notice: t('.success') }
      format.json { head :no_content }
    end
  end

  private

  def set_project
    @project = current_company.projects.find(params[:id]).decorate
  end

  def project_params
    params.require(:project).permit(
      :start_on,
      :end_on,
      :status,
      :title,
      :note,
      project_tags_attributes: %i(
        id _destroy
        tag_id company_id project_id
      )
    )
  end
end
