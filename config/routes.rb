Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  # ----------------------------------------------------------------------------
  # User
  # ----------------------------------------------------------------------------

  devise_for :staffs, controllers: {
    sessions:      'staffs/sessions',
    passwords:     'staffs/passwords',
    registrations: 'staffs/registrations'
  }
  devise_for :engineers, controllers: {
    sessions:      'engineers/sessions',
    passwords:     'engineers/passwords',
    registrations: 'engineers/registrations'
  }
  devise_for :companies, controllers: {
    sessions:      'companies/sessions',
    passwords:     'companies/passwords',
    registrations: 'companies/registrations'
  }


  #
  # エンジニア向け画面
  #
  namespace :engineers do
    get 'my_page'
    resources :confirm_documents, only: %i(new create)
  end

  #
  # スタートアップ向け画面
  #
  namespace :companies do
    get 'my_page'
  end

  #
  # スタッフ向け画面
  #
  namespace :staffs do
    get 'my_page'
  end
end
