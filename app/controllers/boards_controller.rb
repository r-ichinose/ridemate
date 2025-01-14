class BoardsController < ApplicationController
  def index
    @boards = Board.order("created_at DESC") # 登録されたボードを一覧表示
  end

  def new
    @board = Board.new # フォームで使用する新しいインスタンスを作成
  end

  def create
    @board = Board.new(board_params) # フォームから送られたデータを取得
    @board.user = current_user       # 現在ログインしているユーザーと関連付け

    if @board.save
      redirect_to boards_path, notice: 'ボードを登録しました。' # 一覧画面にリダイレクト
    else
      flash.now[:alert] = 'ボードの登録に失敗しました。入力内容を確認してください。'
      render :new, status: :unprocessable_entity # 同じフォームを再表示
    end
  end

  private

  def board_params
    params.require(:board).permit(:model, :brand, :condition_id, :style_id, :shape_id, :camber_id, :purchase, :length, :price)
  end
end
