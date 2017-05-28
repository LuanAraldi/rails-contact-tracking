Rails.application.routes.draw do
  match '*any' => 'application#options', :via => [:options]

  resources :contacts
  resources :accesses
end
