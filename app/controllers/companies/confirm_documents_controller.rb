#
# スタートアップの法人確認書類管理
#
class Companies::ConfirmDocumentsController < Companies::BaseController
  #
  # Callbacks
  #
  before_action :create_unconfirmed_address

  # GET /companies/confirm_documents/new
  def new
    @confirm_document = ConfirmDocument.new
  end

  # POST   /companies/confirm_documents
  def create
    @confirm_document = current_company.
      unconfirmed_address.confirm_documents.new(confirm_document_params)

    if @confirm_document.save
      current_company.unconfirmed_address.confirmation!
      redirect_to companies_my_page_url, notice: t('.success')
    else
      render :new
    end
  end

  private

  def create_unconfirmed_address
    redirect_to edit_company_registration_url,
      alert: t('.regist_address') unless current_company.unconfirmed_address
  end

  def confirm_document_params
    params.fetch(:confirm_document, {}).permit(
      :image
    )
  end
end
