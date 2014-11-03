Rails.application.routes.draw do



  root :to => "application#index"

  scope '/api', defaults: { format: :json } do
    resources :posts
  end

  get '*path' => 'application#index'


end
