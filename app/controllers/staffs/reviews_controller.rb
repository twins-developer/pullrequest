#
# スタッフ管理
#
class Staffs::ReviewsController < Staffs::BaseController
  def new
    @review = Review.new
  end

  def create
    @review = current_staff.reviews.new(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to staffs_dashboard_url, notice: t('.success') }
      else
        format.html { render :new }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(
      :title,
      :started_on,
      :ended_on,
      :note,
      :code
    )
  end
end
