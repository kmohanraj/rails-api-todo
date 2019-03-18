Rails.application.routes.draw do
  
  resources :todos, param: :_id

  get '/*a', to: 'application#not_found'

end