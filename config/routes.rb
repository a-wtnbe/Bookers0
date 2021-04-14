Rails.application.routes.draw do
  get 'list/new'
  # 新規投稿
  post 'index' => 'index#create'
  # 一覧
  get 'index' => 'index#list'
  # ルートパスtop
  get 'home/index'
  root to: 'home#index'
  # 詳細設定

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
