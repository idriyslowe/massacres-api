Rails.application.routes.draw do
  get '/incidents' => 'incidents#index'
  get '/incidents/:id' => 'incidents#show'
  post '/incidents' => 'incidents#create'
  delete '/incidents/:id' => 'incidents#destroy'
end
