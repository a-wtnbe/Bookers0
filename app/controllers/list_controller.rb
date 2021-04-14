class ListController < ApplicationController
  def new
    # からモデル作成
    @book = Book.new
  end

  # 新規投稿
  def create
    # １. データを新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # ３. トップ画面へリダイレクト
    # redirect_to '/top'
  end

  def new
    @book = Book.all
  end

  # こっから下はコントローラーの中でしか呼ばないぞ
  private
  # ストロングパラメータここ違うってさエラー出てんのparamが見つからない空だって
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
