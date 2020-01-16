Rails.application.routes.draw do
 namespace :api do
  get '/query_params' => 'params_examples#query_params'
  post'/guess_query' => 'params_examples#guess_query'
 end
end
