Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root"static_pages#home"

    get "/home", to: "static_pages#home"
    get "/help", to: "static_pages#help"
    get "/about", to: "static_pages#about"
    get "/sign_up", to: "users#new"
    post "/sign_up", to: "users#create"
    resources :users
  end
end
