class BoardMaintenancesController < ApplicationController
  def new
    @board_maintenance = BoardMaintenance.new
  end

  def create
    @board_maintenance = BoardMaintenance.new(board_maintenance_params)

    if @board_maintenance.save
      redirect_to board_maintenances_path, notice: 'メンテナンスが保存されました。'
    else
      render :new, alert: 'メンテナンスの保存に失敗しました。'
    end
  end

  private

  def board_maintenance_params
    params.require(:board_maintenance).permit(:maintenance_date, :content, :notification, :board_id)
  end
end
