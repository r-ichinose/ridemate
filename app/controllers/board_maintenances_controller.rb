class BoardMaintenancesController < ApplicationController
  before_action :set_board

  def new
    @board_maintenance = @board.board_maintenances.new
    @board_maintenances = @board.board_maintenances.order(maintenance_date: :desc) # 履歴を取得
  end

  def create
    @board_maintenance = @board.board_maintenances.build(board_maintenance_params)

    if @board_maintenance.save
      redirect_to board_path(@board), notice: 'メンテナンスが保存されました。'
    else
      @board_maintenances = @board.board_maintenances.order(maintenance_date: :desc) # 履歴も再取得
      render :new, alert: 'メンテナンスの保存に失敗しました。'
    end
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def board_maintenance_params
    params.require(:board_maintenance).permit(:maintenance_date, :content, :notification)
  end
end