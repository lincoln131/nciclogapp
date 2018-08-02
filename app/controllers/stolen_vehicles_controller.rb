class StolenVehiclesController < ApplicationController
  before_action :set_stolen_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /stolen_vehicles
  # GET /stolen_vehicles.json
  def index
    @stolen_vehicles = StolenVehicle.all
  end

  # GET /stolen_vehicles/1
  # GET /stolen_vehicles/1.json
  def show
  end

  # GET /stolen_vehicles/new
  def new
    @stolen_vehicle = StolenVehicle.new
  end

  # GET /stolen_vehicles/1/edit
  def edit
  end

  # POST /stolen_vehicles
  # POST /stolen_vehicles.json
  def create
    @stolen_vehicle = StolenVehicle.new(stolen_vehicle_params)

    respond_to do |format|
      if @stolen_vehicle.save
        format.html { redirect_to @stolen_vehicle, notice: 'Stolen vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @stolen_vehicle }
      else
        format.html { render :new }
        format.json { render json: @stolen_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stolen_vehicles/1
  # PATCH/PUT /stolen_vehicles/1.json
  def update
    respond_to do |format|
      if @stolen_vehicle.update(stolen_vehicle_params)
        format.html { redirect_to @stolen_vehicle, notice: 'Stolen vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @stolen_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @stolen_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stolen_vehicles/1
  # DELETE /stolen_vehicles/1.json
  def destroy
    @stolen_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to stolen_vehicles_url, notice: 'Stolen vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stolen_vehicle
      @stolen_vehicle = StolenVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stolen_vehicle_params
      params.require(:stolen_vehicle).permit(:oca, :operator_name, :officer_name, :ncic_num, :year, :make, :model, :vin, :license_plate, :color, :owner_name, :owner_phone, :date_add, :date_remove, :remove_by)
    end
end
