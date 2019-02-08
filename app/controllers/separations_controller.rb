class SeparationsController < ApplicationController
  before_action :set_separation, only: [:show, :edit, :update, :destroy]

  # GET /separations
  # GET /separations.json
  def index
    @separations = Separation.all
  end

  # GET /separations/1
  # GET /separations/1.json
  def show
  end

  # GET /separations/new
  def new
    @separation = Separation.new
  end

  # GET /separations/1/edit
  def edit
  end

  # POST /separations
  # POST /separations.json
  def create
    @separation = Separation.new(separation_params)

    respond_to do |format|
      if @separation.save
        format.html { redirect_to @separation, notice: 'Separation was successfully created.' }
        format.json { render :show, status: :created, location: @separation }
      else
        format.html { render :new }
        format.json { render json: @separation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /separations/1
  # PATCH/PUT /separations/1.json
  def update
    respond_to do |format|
      if @separation.update(separation_params)
        format.html { redirect_to @separation, notice: 'Separation was successfully updated.' }
        format.json { render :show, status: :ok, location: @separation }
      else
        format.html { render :edit }
        format.json { render json: @separation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /separations/1
  # DELETE /separations/1.json
  def destroy
    @separation.destroy
    respond_to do |format|
      format.html { redirect_to separations_url, notice: 'Separation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_separation
      @separation = Separation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def separation_params
      params.require(:separation).permit(:officer, :callsign, :ad, :email, :rms_login, :rms_seperation, :switch, :cad_login, :dci, :ncaware, :cjleads, :edotcom, :leads, :accurint, :cardkey, :pwgate, :linx, :lexipol)
    end
end
