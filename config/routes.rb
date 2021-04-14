Rails.application.routes.draw do
  # 一覧
  get 'index/new'
  # 新規投稿
  post 'index' => 'index#create'
  # ルートパスtop
  get 'home/index'
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
