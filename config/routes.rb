Rails.application.routes.draw do
  root :to => "static#home"
  get 'public_event/:id', to: 'static#show', as: :public_event
  resources :events do
    member do
      get :invitation, as: :invitations
      post :send_invitations, as: :send_invitation
    end
  end
  devise_for :users
end
