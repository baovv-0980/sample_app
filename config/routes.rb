# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /en|vi/ do
    get '/home', 	to: 'static_pages#home'
    get '/help', 	to: 'static_pages#help'
    get '/about', to: 'static_pages#about'
    root'static_pages#home'
  end
end
