Rails.application.routes.draw do
  get "/tweets" => "tweets#index"
  get "/tweets/new" => "tweets#new"
  post "/tweets" => "tweets#create"
  get "/tweets/:id" => "tweets#show"
  get "/tweets/:id/edit" => "tweets#edit"
  patch "/tweets/:id" => "tweets#update"
  delete "/tweets/:id" => "tweets#destroy"
end
