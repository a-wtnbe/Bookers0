class BooksController < ApplicationController
  def new
    # からモデル作成
    @book = Book.new
    @book = Book.all
  end

  # 新規投稿
  def create
    @message = @group.messages.new(message_params)
    if @message.save
      redirect_to group_messages_path(@group),notice: 'successfuly'
    else
      flash.now[:alert] = 'error'
      render :new
    end
    # １. データを新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # ３. 詳細へリダイレクト
    redirect_to book_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to new_book_path
  end

  # こっから下はコントローラーの中でしか呼ばないぞ
  private
  # ストロングパラメータここ違うってさエラー出てんのparamが見つからない空だって
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
