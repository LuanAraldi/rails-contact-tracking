Rails.application.routes.draw do
  match '*any' => 'application#options', :via => [:options]
  root 'contacts#index'
  resources :contacts
  resources :accesses
end
