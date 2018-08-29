class RecoveredVehiclesController < ApplicationController
  before_action :set_recovered_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /recovered_vehicles
  # GET /recovered_vehicles.json
  def index
    @recovered_vehicles = RecoveredVehicle.all
  end

  # GET /recovered_vehicles/1
  # GET /recovered_vehicles/1.json
  def show
  end

  # GET /recovered_vehicles/new
  def new
    @recovered_vehicle = RecoveredVehicle.new
  end

  # GET /recovered_vehicles/1/edit
  def edit
  end

  # POST /recovered_vehicles
  # POST /recovered_vehicles.json
  def create
    @recovered_vehicle = RecoveredVehicle.new(recovered_vehicle_params)

    respond_to do |format|
      if @recovered_vehicle.save
        format.html { redirect_to @recovered_vehicle, notice: 'Recovered vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @recovered_vehicle }
      else
        format.html { render :new }
        format.json { render json: @recovered_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recovered_vehicles/1
  # PATCH/PUT /recovered_vehicles/1.json
  def update
    respond_to do |format|
      if @recovered_vehicle.update(recovered_vehicle_params)
        format.html { redirect_to @recovered_vehicle, notice: 'Recovered vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @recovered_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @recovered_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recovered_vehicles/1
  # DELETE /recovered_vehicles/1.json
  def destroy
    @recovered_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to recovered_vehicles_url, notice: 'Recovered vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recovered_vehicle
      @recovered_vehicle = RecoveredVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recovered_vehicle_params
      params.require(:recovered_vehicle).permit(:oca, :operator_name, :officer_name, :ncic_num, :year, :make, :model, :vin, :license_plate, :color, :wrecker, :date_add, :date_remove, :remove_by)
    end
end
