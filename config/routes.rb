Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "landing_page#index"
  post "/" => "landing_page#create"
  get "/thanks" => "landing_page#mail_sent"
end
