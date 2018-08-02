class VehicleBoatPartsController < ApplicationController
  before_action :set_vehicle_boat_part, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_boat_parts
  # GET /vehicle_boat_parts.json
  def index
    @vehicle_boat_parts = VehicleBoatPart.all
  end

  # GET /vehicle_boat_parts/1
  # GET /vehicle_boat_parts/1.json
  def show
  end

  # GET /vehicle_boat_parts/new
  def new
    @vehicle_boat_part = VehicleBoatPart.new
  end

  # GET /vehicle_boat_parts/1/edit
  def edit
  end

  # POST /vehicle_boat_parts
  # POST /vehicle_boat_parts.json
  def create
    @vehicle_boat_part = VehicleBoatPart.new(vehicle_boat_part_params)

    respond_to do |format|
      if @vehicle_boat_part.save
        format.html { redirect_to @vehicle_boat_part, notice: 'Vehicle boat part was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_boat_part }
      else
        format.html { render :new }
        format.json { render json: @vehicle_boat_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_boat_parts/1
  # PATCH/PUT /vehicle_boat_parts/1.json
  def update
    respond_to do |format|
      if @vehicle_boat_part.update(vehicle_boat_part_params)
        format.html { redirect_to @vehicle_boat_part, notice: 'Vehicle boat part was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_boat_part }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_boat_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_boat_parts/1
  # DELETE /vehicle_boat_parts/1.json
  def destroy
    @vehicle_boat_part.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_boat_parts_url, notice: 'Vehicle boat part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_boat_part
      @vehicle_boat_part = VehicleBoatPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_boat_part_params
      params.require(:vehicle_boat_part).permit(:oca, :operator_name, :officer_name, :ncic_num, :description, :owner_name, :owner_phone, :date_add, :date_remove, :remove_by)
    end
end
