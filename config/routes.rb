Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '' => "home#index"
  get '/' => "home#index"
  get '/none' => "home#none"
  get '/search' => "home#search"
  get 'health' => "home#health"

end
