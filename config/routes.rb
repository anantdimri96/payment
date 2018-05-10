Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cards
    root 'cards#index'


  match '/payu_callback'=>'cards#payu_return',via: [:get, :post]

  get '/success/:txnid' =>'cards#success',as: 'success'



end
