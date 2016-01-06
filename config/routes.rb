Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/incidents' => 'incidents#index'
      get '/incidents/:id' => 'incidents#show'
      post '/incidents' => 'incidents#create'
      delete '/incidents/:id' => 'incidents#destroy'
    end
    namespace :v2 do
      get '/incidents' => 'incidents#index'
      get '/incidents/:id' => 'incidents#show'
      post '/incidents' => 'incidents#create'
      delete '/incidents/:id' => 'incidents#destroy'
    end
  end
end
