#
# エンジニアの本人確認書類管理
#
class Engineers::ConfirmDocumentsController < Engineers::BaseController
  #
  # Callbacks
  #
  before_action :create_unconfirmed_address

  # GET /engineers/confirm_documents/new
  def new
    session[:confirm_documents_page] = nil
    @confirm_document = ConfirmDocument.new
  end

  # POST   /engineers/confirm_documents
  def create
    @confirm_document = current_engineer.
      unconfirmed_address.confirm_documents.new(address_confirmation_image_params)

    if @confirm_document.save
      current_engineer.unconfirmed_address.confirmation!
      redirect_to engineers_my_page_url, notice: t('.success')
    else
      render :new
    end
  end

  private

  def create_unconfirmed_address
    if !current_engineer.set_profile?
      session[:confirm_documents_page] = new_engineers_confirm_document_path
      redirect_to edit_engineer_registration_url,
        alert: t('.regist_address')
    end
  end

  def address_confirmation_image_params
    params.fetch(:confirm_document, {}).permit(
      :image
    )
  end
end
