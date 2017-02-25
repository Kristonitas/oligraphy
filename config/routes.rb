Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "seasons#index"

  get 'articles/:id', to: 'articles#show', as: :article
  get 'issues/:id', to: 'issues#show', as: :issue
  get 'magazines/:id/stylesheet', to: 'magazines#stylesheet', as: :magazine_stylesheet
  get 'magazines/:id', to: 'magazines#show', as: :magazine
  get 'seasons', to: 'seasons#index', as: :seasons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
