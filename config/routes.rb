Rails.application.routes.draw do
  resources :pils
  root 'pils#index'

  get 'report', to: 'pils#report'
  get 'report_src', to: 'pils#report_src'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
