#
# エンジニアの応募管理
#
class Engineers::AppliesController < Engineers::BaseController
  #
  # Callbacks
  #
  before_action :set_project, only: %i(new confirm create show)
  before_action :set_params_apply, only: %i(confirm create)
  before_action :set_apply, only: %i(show)

  # GET /engineers/applies
  # GET /engineers/applies.json
  def index
    @applies = current_engineer.applies.page(params[:page])
  end

  # GET /engineers/applies/1
  # GET /engineers/applies/1.json
  def show
  end

  # GET /engineers/applies/new
  def new
    @apply = Apply.new
  end

  # GET /engineers/applies/confirm
  def confirm
    if @apply.valid?
      render :confirm
    else
      @again = true
      render :new
    end
  end

  # POST /engineers/applies
  # POST /engineers/applies.json
  def create
    ActiveRecord::Base.transaction do
      respond_to do |format|
        if @apply.save!
          format.html { redirect_to [:engineers, @apply], notice: t('.success') }
          format.json { render :show, status: :created, location: @apply }
        else
          format.html { render :new }
          format.json { render json: @apply.errors, status: :unprocessable_entity }
        end
      end
    end
  rescue
      return redirect_to error_engineers_applies_url
  end

  # GET /engineers/applies/:1
  def show
  end

  # GET /engineers/applies/1/edit
  def edit
  end

  # PATCH/PUT /engineers/applies/1
  # PATCH/PUT /engineers/applies/1.json
  def update
    respond_to do |format|
      if @apply.update(apply_params)
        format.html { redirect_to [:companies, @apply], notice: t('.success') }
        format.json { render :show, status: :created, location: @apply }
      else
        format.html { render :edit }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engineers/applies/1
  # DELETE /engineers/applies/1.json
  def destroy
    @apply.destroy
    respond_to do |format|
      format.html { redirect_to companies_applies_url, notice: t('.success') }
      format.json { head :no_content }
    end
  end

  # GET  /engineers/applies/error
  def error
  end

  private

  def set_project
    @project = Project.find(params[:id] || params[:project_id] || params[:apply][:project_id])
  end

  def set_apply
    @apply = Apply.find(params[:id])
  end

  def set_params_apply
    @apply = current_engineer.
    applies.build(apply_params.merge(
      company_id: @project.company.id,
      project_id: @project.id
      )
    )
  end

  def apply_params
    params.require(:apply).permit(
      :project_id,
      :interviewed_on,
      :start_at,
      :end_at,
      :engineer_reason,
      :company_reason
    )
  end
end
