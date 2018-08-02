class StolenGunsController < ApplicationController
  before_action :set_stolen_gun, only: [:show, :edit, :update, :destroy]

  # GET /stolen_guns
  # GET /stolen_guns.json
  def index
    @stolen_guns = StolenGun.all
  end

  # GET /stolen_guns/1
  # GET /stolen_guns/1.json
  def show
  end

  # GET /stolen_guns/new
  def new
    @stolen_gun = StolenGun.new
  end

  # GET /stolen_guns/1/edit
  def edit
  end

  # POST /stolen_guns
  # POST /stolen_guns.json
  def create
    @stolen_gun = StolenGun.new(stolen_gun_params)

    respond_to do |format|
      if @stolen_gun.save
        format.html { redirect_to @stolen_gun, notice: 'Stolen gun was successfully created.' }
        format.json { render :show, status: :created, location: @stolen_gun }
      else
        format.html { render :new }
        format.json { render json: @stolen_gun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stolen_guns/1
  # PATCH/PUT /stolen_guns/1.json
  def update
    respond_to do |format|
      if @stolen_gun.update(stolen_gun_params)
        format.html { redirect_to @stolen_gun, notice: 'Stolen gun was successfully updated.' }
        format.json { render :show, status: :ok, location: @stolen_gun }
      else
        format.html { render :edit }
        format.json { render json: @stolen_gun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stolen_guns/1
  # DELETE /stolen_guns/1.json
  def destroy
    @stolen_gun.destroy
    respond_to do |format|
      format.html { redirect_to stolen_guns_url, notice: 'Stolen gun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stolen_gun
      @stolen_gun = StolenGun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stolen_gun_params
      params.require(:stolen_gun).permit(:oca, :operator_name, :officer_name, :ncic_num, :make, :model, :caliber, :serial, :owner_name, :owner_phone, :notes, :date_add, :date_remove, :remove_by)
    end
end
