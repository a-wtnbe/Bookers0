Rails.application.routes.draw do
root 'homes#index'

    resources :books

# 　 get 'list/new'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   # ルートパスtop
#   get 'home/index'
#   # 新規投稿
#   post 'list' => 'list#create'
#   get 'list' => 'list#new'
#   # 詳細設定
#   get 'list/:id' => 'list#show', as: 'show_list'
#   # # 編集
#   get 'list/:id/edit' => 'list#edit', as: 'edit_list'
#   patch 'list/:id' => 'list#update', as: 'update_list'
#   delete 'list/:id' => 'list#destroy', as: 'destroy_list'
end
