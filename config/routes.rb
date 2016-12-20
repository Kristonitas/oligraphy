Rails.application.routes.draw do
  get 'articles/:id', to: 'articles#show', as: :article
  get 'issues/:id', to: 'issues#show', as: :issue

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
