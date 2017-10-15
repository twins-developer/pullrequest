#
# スカウト管理
#
class Companies::ScoutsController < Companies::BaseController
  #
  # Callbacks
  #
  before_action :set_engineer, only: %i(new confirm create show)
  before_action :set_scout_merge_engineer, only: %i(confirm create)
  before_action :set_scout, only: %i(show)

  # GET /companies/scouts/new
  def new
    @scout = Scout.new
  end

  # GET /companies/scouts/confirm
  def confirm
    if @scout.valid?
      render :confirm
    else
      @again = true
      render :new
    end
  end

  # POST /companies/scouts
  def create
    ActiveRecord::Base.transaction do
      respond_to do |format|
        if @scout.save!
          format.html { redirect_to [:companies, @scout,
            engineer_id: @scout.engineer_id], notice: t('.success') }
        else
          format.html { render :new }
        end
      end
    end
    rescue
      return redirect_to error_companies_scouts_url
  end

  # GET /engineers/scouts/:1
  def show
  end

  # GET /companies/scouts/error
  def error
  end

  private

  def set_engineer
    @engineer = Engineer.find(params[:engineer_id] || params[:scout][:engineer_id])
  end

  def set_scout
    @scout = current_company.scouts.find(params[:id])
  end

  def set_scout_merge_engineer
    @scout = current_company.scouts.build(scout_params.merge(engineer_id: @engineer.id))
  end

  def scout_params
    params.require(:scout).permit(
      :engineer_id,
      :interviewed_on,
      :start_at,
      :note
    )
  end
end
