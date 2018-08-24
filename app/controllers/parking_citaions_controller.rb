class ParkingCitaionsController < ApplicationController
  before_action :set_parking_citaion, only: [:show, :edit, :update, :destroy]

  # GET /parking_citaions
  # GET /parking_citaions.json
  def index
    @parking_citaions = ParkingCitaion.all
  end

  # GET /parking_citaions/1
  # GET /parking_citaions/1.json
  def show
  end

  # GET /parking_citaions/new
  def new
    @parking_citaion = ParkingCitaion.new
  end

  # GET /parking_citaions/1/edit
  def edit
  end

  # POST /parking_citaions
  # POST /parking_citaions.json
  def create
    @parking_citaion = ParkingCitaion.new(parking_citaion_params)

    respond_to do |format|
      if @parking_citaion.save
        format.html { redirect_to @parking_citaion, notice: 'Parking citaion was successfully created.' }
        format.json { render :show, status: :created, location: @parking_citaion }
      else
        format.html { render :new }
        format.json { render json: @parking_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_citaions/1
  # PATCH/PUT /parking_citaions/1.json
  def update
    respond_to do |format|
      if @parking_citaion.update(parking_citaion_params)
        format.html { redirect_to @parking_citaion, notice: 'Parking citaion was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking_citaion }
      else
        format.html { render :edit }
        format.json { render json: @parking_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_citaions/1
  # DELETE /parking_citaions/1.json
  def destroy
    @parking_citaion.destroy
    respond_to do |format|
      format.html { redirect_to parking_citaions_url, notice: 'Parking citaion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_citaion
      @parking_citaion = ParkingCitaion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_citaion_params
      params.require(:parking_citaion).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
