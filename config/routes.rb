Rails.application.routes.draw do
  get 'list/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ルートパスtop
  get 'home/index'
  root to: 'home#index'
  # 新規投稿
  post 'list' => 'list#create'
  # # 一覧
  get 'list' => 'list#new'

  # 詳細設定

end
