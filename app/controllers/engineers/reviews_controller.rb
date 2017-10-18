#
# エンジニアサイドのレビュー素材管理
#
class Engineers::ReviewsController < ApplicationController
  # GET /engineers/reviews
  def index
  end

  # GET /engineers/reviews/:1
  def show
    @review = Review.find(params[:id])
  end
end
