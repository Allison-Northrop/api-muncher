Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/recipes', to: 'recipes#search_show', as: 'search_show'
  # get '/recipes/:search', to: 'recipes#search', as: 'recipes_search'
  get '/recipes/search', to: 'recipes#search', as: 'search'
end
