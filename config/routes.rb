Rails.application.routes.draw do
  get 'pension_comment/create'

  get 'pension_comment/destroy'

  resources :clinics
  devise_for :users
  resources :meetings
  resources :pensions
  resources :asks
  resources :caves
  # root 'caves#index'
  root to: "home#index"
  
  #like
  post '/pensions/:id/like', to: 'likes#like_toggle', as: 'like_pension'
  post '/caves/:id/like', to: 'likes2#like_toggle3', as: 'like_cafe'
  post '/meetings/:id/like', to: 'likes3#like_toggle2', as: 'like_meeting'
  post '/clinics/:id/like', to: 'likes4#like_toggle4', as: 'like_clinic'
  
  # get '' => 'comment#create'

  # get '' => 'comment#destroy'    # 어떻게 갈지는 아직 모르지만, 도착지는 알고있다.

  # get '/caves/show/:cafe_id/comments/create' => 'comments#create'

  # get '/caves/show/:cafe_id/comments/destroy/:comment_id' => 'comments#destroy'  

  post 'pensions/new' => "pension#new"
  post 'pensions/comment' => "pension_comment#create"
  delete '/pensions/:article_id/comment/:id' =>"pension_comment#delete"
  # delete 'pensions/comment' => "pension_comment#delete"

  
  post 'caves/comment' => "cafe_comment#create"
  delete '/caves/:article_id/comment/:id' =>"cafe_comment#delete"
  #delete 'caves/comment' => "cafe_comment#delete"

  post 'clinics/comment' => "clinic_comment#create"
  delete '/clinics/:article_id/comment/:id' =>"clinic_comment#delete"
  #delete 'clinics/comment' => "clinic_comment#delete"
  
  post 'meetings/comment' => "meeting_comment#create"
  delete '/meetings/:article_id/comment/:id' =>"meeting_comment#delete"
  # delete 'meetings/comment' => "meeting_comment#delete"
  
  
end
