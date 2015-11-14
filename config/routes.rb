Rails.application.routes.draw do
  
  devise_for :users
  
  get 'welcome/index'
  
  # get the yoda page
  get 'welcome/yoda' 

  # post to the yoda page
  post 'welcome/yoda'

  # get the ask page
  get 'welcome/ask'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'
end
