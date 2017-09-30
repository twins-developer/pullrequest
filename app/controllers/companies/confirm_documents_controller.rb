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
    session[:confirm_documents_page] = nil
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
    if !current_company.set_basic_info?
      session[:confirm_documents_page] = new_companies_confirm_document_path
      redirect_to edit_company_registration_url,
        alert: t('.regist_address')
    end
  end

  def confirm_document_params
    params.fetch(:confirm_document, {}).permit(
      :image
    )
  end
end
