class Companies::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  def update
    super
    company = current_company
    attributes = {
      status: :prepare,
      zip_code: company.zip_code,
      prefecture: company.prefecture,
      city: company.city,
      street: company.street,
      building: company.building
    }
    company.unconfirmed_address.update(attributes)
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  private

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  #
  # ユーザー登録完了後に遷移するパスを指定する
  #
  def after_sign_up_path_for(_resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || companies_my_page_path
  end

  def after_inactive_sign_up_path_for(_resource)
    root_path
  end

  #
  # アカウント登録時に許可するパラメータの設定
  #
  def sign_up_params
    params.require(:company).permit(:email, :password, :password_confirmation)
  end

  #
  # アカウント情報の編集時に許可するパラメータの設定
  #
  def account_update_params
    params.require(:company).permit(
      :email,
      :password,
      :password_confirmation,
      :current_password,
      basic_info_attributes: %i(
        id
        image name status
        founded_on
        zip_code prefecture city street building
        tel
        capital
      ),
      unconfirmed_addresses: %i(
        id
        resource_id resource_type status
        zip_code prefecture city street building
      ),
    )
  end

  #
  # アカウント情報の更新時にはパスワードは不要
  #
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  #
  # アカウント情報を更新した後のリダイレクト先を指定
  #
  def after_update_path_for(_resource)
    return session[:confirm_documents_page] if session[:confirm_documents_page].present?
    companies_my_page_path
  end
end
