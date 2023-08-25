class ParadasController < ApplicationController
  before_action :set_carona, only: [:create, :destroy]

  def create
    @carona = Carona.find(params[:carona_id])
    @parada = @carona.paradas.create(parada_params)
    redirect_to edit_carona_path(@carona)
  end

  def destroy
    @parada = @carona.paradas.find(params[:id])
    @parada.destroy
    redirect_to carona_path(@carona), notice: 'Parada excluída com sucesso.'
  end

  private

  def set_carona
    @carona = Carona.find(params[:carona_id])zz
  end

  def parada_params
    params.require(:parada).permit(:local, :data_hora)
  end
end