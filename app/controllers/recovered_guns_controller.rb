class RecoveredGunsController < ApplicationController
  before_action :set_recovered_gun, only: [:show, :edit, :update, :destroy]

  # GET /recovered_guns
  # GET /recovered_guns.json
  def index
    @recovered_guns = RecoveredGun.all
  end

  # GET /recovered_guns/1
  # GET /recovered_guns/1.json
  def show
  end

  # GET /recovered_guns/new
  def new
    @recovered_gun = RecoveredGun.new
  end

  # GET /recovered_guns/1/edit
  def edit
  end

  # POST /recovered_guns
  # POST /recovered_guns.json
  def create
    @recovered_gun = RecoveredGun.new(recovered_gun_params)

    respond_to do |format|
      if @recovered_gun.save
        format.html { redirect_to @recovered_gun, notice: 'Recovered gun was successfully created.' }
        format.json { render :show, status: :created, location: @recovered_gun }
      else
        format.html { render :new }
        format.json { render json: @recovered_gun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recovered_guns/1
  # PATCH/PUT /recovered_guns/1.json
  def update
    respond_to do |format|
      if @recovered_gun.update(recovered_gun_params)
        format.html { redirect_to @recovered_gun, notice: 'Recovered gun was successfully updated.' }
        format.json { render :show, status: :ok, location: @recovered_gun }
      else
        format.html { render :edit }
        format.json { render json: @recovered_gun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recovered_guns/1
  # DELETE /recovered_guns/1.json
  def destroy
    @recovered_gun.destroy
    respond_to do |format|
      format.html { redirect_to recovered_guns_url, notice: 'Recovered gun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recovered_gun
      @recovered_gun = RecoveredGun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recovered_gun_params
      params.require(:recovered_gun).permit(:oca, :operator_name, :officer_name, :ncic_num, :make, :model, :caliber, :serial, :owner_name, :owner_phone, :notes, :date_add, :date_remove, :remove_by)
    end
end
