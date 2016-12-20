Rails.application.routes.draw do

  get 'articles/:id', to: 'articles#show', as: :article
  get 'issues/:id', to: 'issues#show', as: :issue
  get 'magazines/:id/stylesheet', to: 'magazines#stylesheet', as: :magazine_stylesheet
  get 'magazines/:id', to: 'magazines#show', as: :magazine

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
