class UffCampusController < ApplicationController
  before_action :set_uff_campu, only: %i[ show edit update destroy ]

  # GET /uff_campus or /uff_campus.json
  def index
    @uff_campus = UffCampus.all
  end

  # GET /uff_campus/1 or /uff_campus/1.json
  def show
  end

  # GET /uff_campus/new
  def new
    @uff_campu = UffCampus.new
  end

  # GET /uff_campus/1/edit
  def edit
  end

  # POST /uff_campus or /uff_campus.json
  def create
    @uff_campu = UffCampus.new(uff_campu_params)

    respond_to do |format|
      if @uff_campu.save
        format.html { redirect_to uff_campu_url(@uff_campu), notice: "Uff campus was successfully created." }
        format.json { render :show, status: :created, location: @uff_campu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uff_campu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uff_campus/1 or /uff_campus/1.json
  def update
    respond_to do |format|
      if @uff_campu.update(uff_campu_params)
        format.html { redirect_to uff_campu_url(@uff_campu), notice: "Uff campus was successfully updated." }
        format.json { render :show, status: :ok, location: @uff_campu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uff_campu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uff_campus/1 or /uff_campus/1.json
  def destroy
    @uff_campu.destroy

    respond_to do |format|
      format.html { redirect_to uff_campus_index_url, notice: "Uff campus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uff_campu
      @uff_campu = UffCampus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uff_campu_params
      params.require(:uff_campu).permit(:description, :adress, :number, :neighbourhood, :city, :cep, :deactivationDate)
    end
end
