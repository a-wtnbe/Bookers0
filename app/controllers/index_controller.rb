class IndexController < ApplicationController
  # 新規投稿
  def new

    @book = Book.new

  end

  def create
    # 新規投稿インスタンス作成
    book = Book.new(list_params)
    # データべースへ保存（saveメゾット実行）
    book.save
    # トップ画面へリダイレクト
    redirect_to '/top'
  end

  private
  # ここから先はコントローラの中で呼び出す。ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
