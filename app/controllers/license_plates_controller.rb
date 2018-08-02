class LicensePlatesController < ApplicationController
  before_action :set_license_plate, only: [:show, :edit, :update, :destroy]

  # GET /license_plates
  # GET /license_plates.json
  def index
    @license_plates = LicensePlate.all
  end

  # GET /license_plates/1
  # GET /license_plates/1.json
  def show
  end

  # GET /license_plates/new
  def new
    @license_plate = LicensePlate.new
  end

  # GET /license_plates/1/edit
  def edit
  end

  # POST /license_plates
  # POST /license_plates.json
  def create
    @license_plate = LicensePlate.new(license_plate_params)

    respond_to do |format|
      if @license_plate.save
        format.html { redirect_to @license_plate, notice: 'License plate was successfully created.' }
        format.json { render :show, status: :created, location: @license_plate }
      else
        format.html { render :new }
        format.json { render json: @license_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /license_plates/1
  # PATCH/PUT /license_plates/1.json
  def update
    respond_to do |format|
      if @license_plate.update(license_plate_params)
        format.html { redirect_to @license_plate, notice: 'License plate was successfully updated.' }
        format.json { render :show, status: :ok, location: @license_plate }
      else
        format.html { render :edit }
        format.json { render json: @license_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /license_plates/1
  # DELETE /license_plates/1.json
  def destroy
    @license_plate.destroy
    respond_to do |format|
      format.html { redirect_to license_plates_url, notice: 'License plate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_license_plate
      @license_plate = LicensePlate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def license_plate_params
      params.require(:license_plate).permit(:oca, :operator_name, :officer_name, :ncic_num, :license_plate, :state, :owner_name, :owner_phone, :date_add, :date_remove, :remove_by)
    end
end
