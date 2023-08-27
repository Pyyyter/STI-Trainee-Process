class CaronasController < ApplicationController
  before_action :set_carona, only: [:show, :edit, :update, :destroy]

  def index
    @caronas = Carona.all
  end

  def show
    @paradas = @carona.paradas
  end

  def new
    @carona = Carona.new
  end
  
  def create
    @carona = Carona.new(carona_params)

    if !Campus.pluck(:description).include?(@carona.inicio) && !Campus.pluck(:description).include?(@carona.fim)
      flash[:error] = 'Carona inválida. O ponto de partida ou de chegada devem ser um campus da UFF'
      render :new
    elsif @carona.save
      redirect_to @carona, notice: 'Carona was successfully created.'
    else
      flash[:error] = @carona.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
  end

  def update
    if !Campus.pluck(:description).include?(params[:carona][:inicio]) && !Campus.pluck(:description).include?(params[:carona][:fim])
      redirect_to edit_carona_path(@carona), notice: 'Carona inválida. O ponto de partida ou de chegada devem ser um campus da UFF'
    elsif @carona.update(carona_params)
      redirect_to @carona, notice: 'A carona foi atualizada.'
    else
      flash[:error] = @carona.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    @carona.destroy
    redirect_to caronas_url, notice: 'Carona excluída com sucesso.'
  end

  private

  def set_carona
    @carona = Carona.find(params[:id])
  end

  def carona_params
    params.require(:carona).permit(:motorista, :data, :hora, :numero_de_passageiros, :custo, :inicio, :fim, :observacao)
  end
end
