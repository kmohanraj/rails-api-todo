Rails.application.routes.draw do
  
  resources :todos, param: :_id

  # scope 'api/v1' do
  # 	resources :todos, param: :_id
  # end

  get '/*a', to: 'application#not_found'

end