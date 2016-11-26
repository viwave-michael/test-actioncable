Rails.application.routes.draw do
  root 'devices#manage'

  post   'sessions/create'
  delete 'sessions/destroy'

  resources :commands
  resources :devices do
    collection do
      get 'manage'
    end
    member do
      get 'update_status'
    end
  end
end
