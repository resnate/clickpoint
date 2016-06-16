Rails.application.routes.draw do

  root "clickpoint#home"

  resources :clickpoint

  get '/lastID' => 'clickpoint#lastID'

end
