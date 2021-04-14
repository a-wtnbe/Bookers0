class ListController < ApplicationController
  def new
    # からモデル作成
    @book = Book.new
  end
end
